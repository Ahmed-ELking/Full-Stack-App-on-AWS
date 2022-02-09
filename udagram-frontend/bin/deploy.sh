aws configure set varname value --profile $AWS_PROFILE

aws configure set AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY

aws s3 cp --recursive --acl public-read ./www s3://$AWS_BUCKET/