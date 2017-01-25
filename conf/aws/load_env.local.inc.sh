#!/bin/sh
export PROVIDER=aws
export INSTANCE_TYPE=t2.small
export KEYPAIR_NAME="EA31337-Tester"
export SUBNET_ID="subnet-2997c75e"
export PRIVATE_KEY="$HOME/Projects/EA31337/EA31337/conf/certs/EA31337-Tester.pem"
#export TERMINATE=1
export POWER_OFF=1
#export NO_SETUP=1
