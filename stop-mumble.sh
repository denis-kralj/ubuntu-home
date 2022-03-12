#!/bin/bash

echo "Stopping mumble instance..."
aws ec2 stop-instances --instance-ids $MUMBLE_AWS_INSTANCE_ID --profile MumbleUser > /dev/null
echo "Command queued, instance will stop soon"
