
eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD DB_PORT=$DB_PORT POSTGRES_USERNAME=$POSTGRES_USERNAME PORT=$PORT

eb init udagram-api --platform node.js --profile default --region $AWS_DEFAULT_REGION

eb create --sample udagram-api-dev

eb use udagram-api-dev

echo "deploy:
        artifact: www/Archive.zip" >> .elasticbeanstalk/config.yml

eb deploy udagram-api-dev 
