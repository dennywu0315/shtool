#!/bin/bash
#  The scirpt is for start/stop rsync process
#  by Denny Wu
#  2013/7/3

PIDFILE="/var/run/rsyncd.pid"
CONFIG="/etc/rsyncd/rsyncd.conf"

check_status(){
    ps -ef|grep "rsync --daemon"|grep -qv grep
    return $?
}

rsync_start(){
    check_status
    if [ $? -eq 0 ];then
        echo "rsync already running" 
    else 
        rm -f $PIDFILE
        echo "Starting rsync..."
        /usr/bin/rsync --daemon --config=$CONFIG
        check_status
        if [ $? -eq 0 ];then
            echo "rsync is started..."
        else
            echo "Cannot start rsync...exit..."
            exit 1
        fi
    fi
}

rsync_stop(){
    check_status
    if [ $? -eq 0 ];then
        echo "Stopping rsync..."
        kill -9 `cat $PIDFILE`
        check_status
        if [ $? -eq 0 ];then
            echo "Failed to stop rsync..."
        else
            echo "rsync is stopped..."
        fi
    else
        echo "rsync already stopped"
    fi
}

rsync_restart(){
    check_status
    if [ $? -eq 0 ];then
        rsync_stop
        rsync_start
    else
        rsync_start
    fi
}

case $1 in 
    "start")    
        rsync_start     ;;
    "stop")
        rsync_stop      ;;
    "restart")
        rsync_restart   ;;
    *)
        echo ""
        echo "Usage: $0 start|stop|restart"
        echo ""
esac


