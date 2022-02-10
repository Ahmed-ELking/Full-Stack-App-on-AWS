import * as dotenv from "dotenv";
dotenv.config();

export const config = {
  username: process.env.POSTGRES_USERNAME,
  password: process.env.POSTGRES_PASSWORD,
  database: process.env.POSTGRES_DB,
  port: Number(process.env.PORT),
  host: process.env.POSTGRES_HOST,
  dbPort: Number(process.env.DB_PORT),
  dialect: process.env.RDS_DIALECT,
  aws_region: process.env.AWS_DEFAULT_REGION,
  aws_profile: process.env.AWS_PROFILE,
  aws_media_bucket: process.env.AWS_BUCKET,
  url: process.env.URL,
  jwt: {
    secret: process.env.JWT_SECRET,
  },
};
