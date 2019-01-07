function java_version {
  version=$1
  brew_location="/usr/local/Cellar"
  export JAVA_HOME="$(ls -d $brew_location/adoptopenjdk-openjdk*/jdk* | grep $version)"
  brew unlink adoptopenjdk-openjdk$version && brew link --overwrite adoptopenjdk-openjdk$version
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
