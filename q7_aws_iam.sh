#!/bin/bash

# install AWS CLI
# configure AWS cli

output=`aws iam create-user --user-name user123`
echo $output