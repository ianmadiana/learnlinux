#!/bin/bash
# learn about case statement

case "${1}" in
    start)
        echo "Starting: ..."
    ;;
    status|state)
        echo "Status: ..."
    ;;
    stop)
        echo "Stop: ..."
    ;;
    *)
        echo "Please enter a valid value!"
    ;;
esac
