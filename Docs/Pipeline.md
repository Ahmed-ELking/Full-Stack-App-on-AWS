# Pipeline diagram

![Pipeline diagram](../ScreenShots/pipeline-diagram.png)


## Pipeline process

[![Ahmed-ELking](https://circleci.com/gh/Ahmed-ELking/Full-Stack-App-on-AWS.svg?style=shield)](https://app.circleci.com/pipelines/github/Ahmed-ELking/Full-Stack-App-on-AWS/15/workflows/c9e9a138-bd8d-4e3e-af5e-983dbe0b58bc)




1. Circleci creates an environments with orbs:
   1. `node: circleci/node@5.0.0`
   2. `aws-cli: circleci/aws-cli@2.0.0`
   3. `eb: circleci/aws-elastic-beanstalk@2.0.1`

2. Setup aws-cli with circleci environment variables:


   ![circleci environment variables](../ScreenShots/circleci-env1.png)
   ![circleci environment variables](../ScreenShots/circleci-env2.png)


3. Installing NPM packages
4. Install frontend dependencies
5. Install backend dependencies
6. Build the frontend
7. Build the backend
8. Deploy the frontend
9. Deploy the backend


   ![circleci pipeline success](../ScreenShots/circleci-1.png)
   ![circleci pipeline success](../ScreenShots/circleci-2.png)
   ![circleci pipeline success](../ScreenShots/circleci-3.png)