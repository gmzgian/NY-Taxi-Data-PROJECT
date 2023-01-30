# de-zoomcamp2023


GIT BASH commands + Jupiter notebook notes below:

GIT BASH commands show when I was checking if data was correctly loaded. I accidentaly closed the Git bash window with SQL queries up to answer 5. I was not able to resolve answer 6 (can see the SQL below), so I selected a random answer. 



gianz@415DATA MINGW64 ~
$ ssh de-zoomcamp
Welcome to Ubuntu 20.04.5 LTS (GNU/Linux 5.15.0-1027-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon Jan 30 11:00:15 UTC 2023



 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

4 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

New release '22.04.1 LTS' available.
Run 'do-release-upgrade' to upgrade to it.

(base) gian@de-zoomcamp:~$ ls
Anaconda3-2022.10-Linux-x86_64.sh  bin                        snap
anaconda3                          data-engineering-zoomcamp
(base) gian@de-zoomcamp:~$ cd data-engineering-zoomcamp/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp$ ls
README.md            dataset.md                     week_4_analytics_engineering
after-sign-up.md     images                         week_5_batch_processing
arch_diagram.md      week_1_basics_n_setup          week_6_stream_processing
asking-questions.md  week_2_workflow_orchestration  week_7_project
cohorts              week_3_data_warehouse
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp$ cd week_1_basics_n_setup/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ ls
1_terraform_gcp  2_docker_sql  README.md
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ ^C
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ cd 2_docker_sql/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup/2_docker_sql$ wget https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv
--2023-01-30 11:07:09--  https://s3.amazonaws.com/nyc-tlc/misc/taxi+_zone_lookup.csv
Resolving s3.amazonaws.com (s3.amazonaws.com)... , ...
Connecting to s3.amazonaws.com (s3.amazonaws.com)||:443... connected.
HTTP request sent, awaiting response... 200 OK
Length: 12322 (12K) [application/octet-stream]
Saving to: ‘taxi+_zone_lookup.csv’

taxi+_zone_lookup.csv  100%[=========================>]  12.03K  --.-KB/s    in 0s


(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup/2_docker_sql$ client_loop: send disconnect: Connection reset by peer

gianz@415DATA MINGW64 ~
$ ssh de-zoomcamp
Welcome to Ubuntu 20.04.5 LTS (GNU/Linux 5.15.0-1027-gcp x86_64)

 * Documentation:  https://help.ubuntu.com
 * Management:     https://landscape.canonical.com
 * Support:        https://ubuntu.com/advantage

  System information as of Mon Jan 30 13:25:45 UTC 2023


 * Strictly confined Kubernetes makes edge and IoT secure. Learn how MicroK8s
   just raised the bar for easy, resilient and secure K8s cluster deployment.

   https://ubuntu.com/engage/secure-kubernetes-at-the-edge

4 updates can be applied immediately.
To see these additional updates run: apt list --upgradable

New release '22.04.1 LTS' available.
Run 'do-release-upgrade' to upgrade to it.


Last login: Mon Jan 30 11:51:01 2023
(base) gian@de-zoomcamp:~$ ls
Anaconda3-2022.10-Linux-x86_64.sh  anaconda3  bin  data-engineering-zoomcamp  snap
(base) gian@de-zoomcamp:~$ cd data-engineering-zoomcamp/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp$ ls
README.md            cohorts                week_2_workflow_orchestration  week_6_stream_processing
after-sign-up.md     dataset.md             week_3_data_warehouse          week_7_project
arch_diagram.md      images                 week_4_analytics_engineering
asking-questions.md  week_1_basics_n_setup  week_5_batch_processing
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp$ cd week_1_basics_n_setup/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ ls
1_terraform_gcp  2_docker_sql  README.md
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ ^C
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup$ cd 2_docker_sql/
(base) gian@de-zoomcamp:~/data-engineering-zoomcamp/week_1_basics_n_setup/2_docker_sql$ pgcli -h localhost -p 5432 -u root -d ny_taxi
Load your password from keyring returned:
No recommended backend was available. Install a recommended 3rd party backend package; or, install the keyrings.alt package if you want to use the non-recommended backends. See https://pypi.org/project/keyring for details.
To remove this message do one of the following:
- prepare keyring as described at: https://keyring.readthedocs.io/en/stable/
- uninstall keyring: pip uninstall keyring
- disable keyring in our configuration: add keyring = False to [main]
Password for root:
Set password in keyring returned:
No recommended backend was available. Install a recommended 3rd party backend package; or, install the keyrings.alt package if you want to use the non-recommended backends. See https://pypi.org/project/keyring for details.
To remove this message do one of the following:
- prepare keyring as described at: https://keyring.readthedocs.io/en/stable/
- uninstall keyring: pip uninstall keyring
- disable keyring in our configuration: add keyring = False to [main]
Server: PostgreSQL 13.9 (Debian 13.9-1.pgdg110+1)
Version: 3.5.0
Home: http://pgcli.com
root@localhost:ny_taxi> \d green_taxi_data_zones
+--------------+--------+-----------+
| Column       | Type   | Modifiers |
|--------------+--------+-----------|
| index        | bigint |           |
| LocationID   | bigint |           |
| Borough      | text   |           |
| Zone         | text   |           |
| service_zone | text   |           |
+--------------+--------+-----------+
Indexes:
    "ix_green_taxi_data_zones_index" btree (index)

Time: 0.022s
root@localhost:ny_taxi> \d green_taxi_data
+-----------------------+-----------------------------+-----------+
| Column                | Type                        | Modifiers |
|-----------------------+-----------------------------+-----------|
| index                 | bigint                      |           |
| VendorID              | bigint                      |           |
| lpep_pickup_datetime  | timestamp without time zone |           |
| lpep_dropoff_datetime | timestamp without time zone |           |
| store_and_fwd_flag    | text                        |           |
| RatecodeID            | bigint                      |           |
| PULocationID          | bigint                      |           |
| DOLocationID          | bigint                      |           |
| passenger_count       | bigint                      |           |
| trip_distance         | double precision            |           |
| fare_amount           | double precision            |           |
| extra                 | double precision            |           |
| mta_tax               | double precision            |           |
| tip_amount            | double precision            |           |
| tolls_amount          | double precision            |           |
| ehail_fee             | double precision            |           |
| improvement_surcharge | double precision            |           |
| total_amount          | double precision            |           |
| payment_type          | bigint                      |           |
| trip_type             | bigint                      |           |
| congestion_surcharge  | double precision            |           |
+-----------------------+-----------------------------+-----------+
Indexes:
    "ix_green_taxi_data_index" btree (index)
Time: 0.014s
root@localhost:ny_taxi> select
root@localhost:ny_taxi> select "DOLocationID" from green_taxi_data where green_taxi_data."PULocationID"=7 and tip_amount=(select MAX(tip_amount) from green_ta
 xi_data);
+--------------+
| DOLocationID |
|--------------|
+--------------+
SELECT 0
Time: 0.146s
root@localhost:ny_taxi>
root@localhost:ny_taxi> select "DOLocationID" from green_taxi_data where "PULocationID"=7 and tip_amount=(select MAX(tip_amount) from green_taxi_data);
+--------------+
| DOLocationID |
|--------------|
+--------------+
SELECT 0
Time: 0.145s


    root@localhost:ny_taxi> select COUNT(1) from green_taxi_data_zones;
+-------+
| count |
|-------|
| 265   |
+-------+
SELECT 1
Time: 0.007s
root@localhost:ny_taxi>

JUPITER Notebook1:
import pands as pd

import pandas as pd

pd.__version__

df = pd.read_csv('green_tripdata_2019-01.csv.gz', nrows=100)

print(pd.io.sql.get_schema(df, name='green_taxi_data', con=engine))

df.lpep_pickup_datetime=pd.to_datetime(df.lpep_pickup_datetime)
df.lpep_dropoff_datetime=pd.to_datetime(df.lpep_dropoff_datetime)

from sqlalchemy import create_engine

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')

JUPITER NOTEBOOK2 import pandas as pd

df2 = pd.read_csv('taxi+_zone_lookup.csv', nrows=100)

print(pd.io.sql.get_schema(df2, name='green_taxi_data_zones', con=engine))

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')

from sqlalchemy import create_engine

engine = create_engine('postgresql://root:root@localhost:5432/ny_taxi')

print(pd.io.sql.get_schema(df2, name='green_taxi_data_zones', con=engine))

df2= next(df_iter2)

df_iter2= pd.read_csv('taxi+_zone_lookup.csv', iterator=True, chunksize=100000)

df2= next(df_iter2)

len(df2)

df2.head()

df2.to_sql(name='green_taxi_data_zones', con=engine, if_exists='replace')


print(pd.io.sql.get_schema(df2, name='green_taxi_data_zones', con=engine))

df = next(df_iter)

len(df)

df.lpep_pickup_datetime=pd.to_datetime(df.lpep_pickup_datetime)
df.lpep_dropoff_datetime=pd.to_datetime(df.lpep_dropoff_datetime)

df.head(n=0).to_sql(name='green_taxi_data', con=engine, if_exists='replace')

%time df.to_sql(name='green_taxi_data', con=engine, if_exists='append')

while True:
    df = next(df_iter)
    
    df.lpep_pickup_datetime=pd.to_datetime(df.lpep_pickup_datetime)
    df.lpep_dropoff_datetime=pd.to_datetime(df.lpep_dropoff_datetime)
    
    df.to_sql(name='green_taxi_data', con=engine, if_exists='append')
    
    print('insterted another chunk...')
