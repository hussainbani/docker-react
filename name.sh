#!/bin/bash

jobname=$(echo $JOB_NAME | awk -F [:/] '{ print $1 }')
echo "/var/lib/jenkins/jobs/$jobname/branches/$BRANCH_NAME/builds/$BUILD_NUMBER"

