export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"

function jdk {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
  java -version
}

function classpath_jars() {
  tr ':' '\n' | grep ".jar$"
}

function find_classpath_jar_contents() {
  query=$1
  for jar in $(classpath_jars); do
    echo Checking $jar...
    jar tf $jar | grep $query
  done
}
