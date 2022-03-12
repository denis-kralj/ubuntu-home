#!/bin/bash

echo "Starting up mumble instance..."
aws ec2 start-instances --instance-ids $MUMBLE_AWS_INSTANCE_ID --profile MumbleUser > /dev/null
echo "Awaiting public IP address..."
while
    sleep 5
    data=$(aws ec2 describe-instances --instance-ids $MUMBLE_AWS_INSTANCE_ID --profile MumbleUser)
    publicIp=$( jq ".Reservations[0].Instances[0].PublicIpAddress" <<< "${data}" )
    echo -n "."
[[ $publicIp == "null" ]]
do true; done

echo ""
echo "Mumble IP => $publicIp"
