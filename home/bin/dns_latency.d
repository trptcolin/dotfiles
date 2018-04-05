#!/usr/sbin/dtrace -s

dtrace:::BEGIN
{
  printf("%-8s %-8s %s\n", "TICK", "ms", "HOST");
  timezero = timestamp;
}

pid$target::getaddrinfo:entry
{
  self->host = copyinstr(arg0);
  self->start = timestamp;
}

pid$target::getaddrinfo:return
/self->start/
{
  this->now = (timestamp - timezero) / 1000000;
  this->time = (timestamp - self->start) / 1000000;
  printf("%-8d %-8d %s\n", this->now, this->time, self->host);
  self->start = 0; self->host = 0;
}
