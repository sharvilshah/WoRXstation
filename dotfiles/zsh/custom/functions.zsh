function java6 () {
    export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
}

function java7 () {
    export JAVA_HOME=`/usr/libexec/java_home -v 1.7`
}

function mtr () {
  sudo mtr --report-wide --show-ips $1 | tee >(pbcopy) 
}
