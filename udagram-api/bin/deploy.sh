eb init udagram-api --platform node.js --region $AWS_DEFAULT_REGION

eb create --sample udagram-api-dev

eb use udagram-api-dev

eb setenv AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY AWS_BUCKET=$AWS_BUCKET AWS_DEFAULT_REGION=$AWS_DEFAULT_REGION DB_PORT=$DB_PORT JWT_SECRET=$JWT_SECRET PORT=$PORT POSTGRES_DB=$POSTGRES_DB POSTGRES_HOST=$POSTGRES_HOST POSTGRES_PASSWORD=$POSTGRES_PASSWORD POSTGRES_USERNAME=$POSTGRES_USERNAME URL=$URL

echo "deploy:
        artifact: www/Archive.zip" >> .elasticbeanstalk/config.yml

eb deploy udagram-api-dev
