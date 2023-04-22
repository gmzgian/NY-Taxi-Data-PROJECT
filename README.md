# NY-Taxi-Data-PROJECT
Data pipeline that loads, transforms and analyzes official NY Taxi data.

# Problem 📛
The New York taxi website contains a vast amount of data that can provide valuable insights into taxi usage patterns and trends. However, accessing and making sense of this data can be a challenging task. The data is often in a raw and unstructured format, making it difficult to work with and analyze effectively.

# Solution 🧪️
To create a more manageable data format, a data pipeline can be used to extract data from the New York taxi website providing a more structured and organized format for the data.
The data is transformed in ready-to-analyze tables that allow simple data visualizion, enabling users to easily explore and understand the data.

# Dashboard 📈
**[Link to the live, interactive dashboard](https://lookerstudio.google.com/reporting/ac652e29-8e51-4b6b-bf07-f1c3b53f619a/page/ahdGD)**

# Technologies 🔩
* Cloud - [Google Cloud Platform](https://cloud.google.com/)
* Infrastructure as Code software - [Terraform](https://www.terraform.io/)
* Batch Processing - [Python](https://www.python.org/)
* Data Lake - [Google Cloud Storage](https://cloud.google.com/storage)
* Data Warehouse - [Google BigQuery](https://cloud.google.com/bigquery)
* Transformation - [Dbt](https://www.getdbt.com/)
* Data Visualization - [Looker Studio](https://cloud.google.com/looker-studio)




This data pipeline project involves extracting data from the New York taxi website, which is then loaded into Google Cloud Storage using a Python script. From there, tables are created in Google BigQuery. The data is then transformed in the data warehouse using dbt, which allows for advanced data modeling and transformation. Finally, the transformed data is visualized in Looker Studio, allowing for easy analysis and insights into the data. This pipeline enables efficient and effective data processing and analysis for the New York taxi website data.