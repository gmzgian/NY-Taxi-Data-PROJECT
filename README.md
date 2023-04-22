# NY-Taxi-Data-PROJECT
Data pipeline that loads, transforms and analyzes official NY Taxi data.

## Problem 📛
The New York taxi website contains a vast amount of data that can provide valuable insights into taxi usage patterns and trends. However, accessing and making sense of this data can be a challenging task. The data is often in a raw and unstructured format, making it difficult to work with and analyze effectively.

## Solution 🧪️
To create a more manageable data format, a data pipeline can be used to extract data from the New York taxi website providing a more structured and organized format for the data.
The data is transformed in ready-to-analyze tables that allow simple data visualizion, enabling users to easily explore and understand the data.

### Dashboard 📈
**[Link to the live, interactive dashboard](https://lookerstudio.google.com/reporting/ac652e29-8e51-4b6b-bf07-f1c3b53f619a/page/ahdGD)**

![Dashboard](https://github.com/gmzgian/NY-Taxi-Data-PROJECT/blob/main/Images/NY%20Taxi%20-%20Looker%20Studio.jpg)

### Data Pipeline 🪜
![Transformation_Flow](https://github.com/gmzgian/NY-Taxi-Data-PROJECT/blob/b752099514097301623bbc146905652b2b87ed9c/Images/data%20pipeline%20NY%20taxi.jpg)

## Technologies 🔩
* Cloud - [Google Cloud Platform](https://cloud.google.com/)
* Infrastructure as Code software - [Terraform](https://www.terraform.io/)
* Batch Processing - [Python](https://www.python.org/)
* Data Lake - [Google Cloud Storage](https://cloud.google.com/storage)
* Data Warehouse - [Google BigQuery](https://cloud.google.com/bigquery)
* Transformation - [Dbt](https://www.getdbt.com/)
* Data Visualization - [Looker Studio](https://cloud.google.com/looker-studio)

## Development Steps 🔧
1. Started a Google Cloud Platform [free account](https://cloud.google.com/free/docs/free-cloud-features#free-trial).
2. Created a Virtual Machine (Linux) and a GCP project and followed the advanced steps in [here](https://github.com/gmzgian/Worldwide-Labour-Force-Data-PROJECT/blob/f590ffc681a7bb024a575765718100038d26abde/GCP_setup/gcp_overview_setup.md).
3. Made sure the follwing software is installed in the machine: Docker and Docker-Compose, Python 3 (e.g. via Anaconda), Terraform.
4. Created a Python script that uploads the NY Taxi data directly from the web -> [web_to_gcs_script.py](https://github.com/gmzgian/NY-Taxi-Data-PROJECT/blob/1786bc520905546e7e52296142c57cb3a4da0135/Python_Script_for_Upload/web_to_gcs_script.py). This code extracts csv files, transforms them into .parquet (more efficient way to store and process data) and than uploads such files into Google Cloud Storage. In my code I take Yellow and Green taxi rides for 2019 and 2020.
5. Transferred the parquet files from GCS to BigQuery.
6. I developed a Dbt flow where I transform and clean the data. See [README.md](https://github.com/gmzgian/NY-Taxi-Data-PROJECT/blob/424f23d47ea6dcff72ac3fdfd2b1ecb8bd5c14a9/DBT/README.md) for detailed steps. Once the Dbt flow has run, it returns new, cleaned and ready-to-analyze tables into Google BigQuery again.
7. Connected to such tables using Looker Studio and developed a dashboard that visualizes NY Taxi data [Dashboard](https://lookerstudio.google.com/reporting/ac652e29-8e51-4b6b-bf07-f1c3b53f619a/page/ahdGD). In the dashboard, I analyze Yellow and Green NY Taxi rides from 2019 to 2020, displaying how also COVID-19 impacted the taxi business. 



Thank you for taking the time read about my project!