#!/bin/bash

jobname=$(echo $JOB_NAME | awk -F [:/] '{ print $1 }')
ARTIFACT_URL=$(/var/lib/jenkins/jobs/$jobname/branches/$BRANCH_NAME/builds/$BUILD_NUMBER)

