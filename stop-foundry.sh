#!/bin/bash

echo "Stopping Foundry instance..."
aws ec2 stop-instances --instance-ids $FOUNDRY_AWS_INSTANCE_ID --profile FoundryUser > /dev/null
echo "Command queued, instance will stop soon"
