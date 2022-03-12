#!/bin/bash

echo "Enter details for the [default] AWS profile"
aws configure --profile default

echo "Enter details for the [MumbleUser] AWS profile"
aws configure --profile MumbleUser

echo "Enter details for git"

echo -n "Name for commits: "
read GIT_UNAME

echo -n "Email for commits: "
read GIT_EMAIL

git config --global user.name "$GIT_UNAME"
git config --global user.email "$GIT_EMAIL"