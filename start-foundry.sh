#!/bin/bash

echo "Starting up Foundry instance..."
aws ec2 start-instances --instance-ids $FOUNDRY_AWS_INSTANCE_ID --profile FoundryUser > /dev/null
echo "Awaiting public IP address..."
while
    sleep 5
    data=$(aws ec2 describe-instances --instance-ids $FOUNDRY_AWS_INSTANCE_ID --profile FoundryUser)
    publicIp=$( jq ".Reservations[0].Instances[0].PublicIpAddress" <<< "${data}" )
    echo -n "."
[[ $publicIp == "null" ]]
do true; done

echo ""
echo "Foundry IP => $publicIp"
