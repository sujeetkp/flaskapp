# flaskapp

Postgres Database has to be created before hand.
DB tables (User and Post) are not created automatically as part of this Application deployment.
Once the app is deployed in Docker, you need to execute the below command inside the Application container to create the tables.

[ec2-user@ip-172-31-37-221 ~]$ sudo docker exec d097e8271f99 flask db upgrade
INFO  [alembic.runtime.migration] Context impl PostgresqlImpl.
INFO  [alembic.runtime.migration] Will assume transactional DDL.
INFO  [alembic.runtime.migration] Running upgrade  -> d58d1fdfa548, empty message

Where "d097e8271f99" is the container ID of the flask application.

---------------------------------------------

If you are deploying the app using docker compose, then you can execute the below command.
"docker-compose exec web flask db upgrade"

----------------------------------------------

If you are deploying the app in Elastic Beanstalk, then you need to install and enable "eb CLI" and "eb ssh" to login to the EC2 instance and then
execute the below command.

sudo docker exec d097e8271f99 flask db upgrade

Where "d097e8271f99" is the container ID of the flask application.

----------------------------------------------------------------------------
