#!/bin/bash

echo $JOB_NAME | awk -F [:/] '{ print $1 }'

