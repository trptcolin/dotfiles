function dinnertime {
  while true; do
    for name in owen henry; do
      random_voice=$(say -v "?" | grep en_ | awk '{print $1}' | uniq | sort -R | head -n1)
      say -v $random_voice eat your food $name
      sleep 5
    done
    sleep 60
  done
}
