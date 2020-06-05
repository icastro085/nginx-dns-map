#!/bin/bash
{
  c_build() {
    docker-compose build
  }

  c_start() {
    docker-compose up -d
  }

  c_logs() {
	  docker-compose logs -f
  }

  c_stop() {
	  docker-compose down
  }

  process_command() {
    COMMAND=$1
    shift

    if [ -z $COMMAND ]; then
      printf "The command was not define, use \"--help\"\n"
      exit
    fi

    case $COMMAND in
      build)
        c_build $@
        exit
      ;;
      start)
        c_start $@
        exit
      ;;
      logs)
        c_logs $@
        exit
      ;;
      stop)
        c_stop $@
        exit
      ;;
      *)
        printf "The \"%s\" is invalid command\n" $TVM_COMMAND
        exit
      ;;
    esac
  }

  process_command $@
}

# https://iridakos.com/programming/2018/03/01/bash-programmable-completion-tutorial
