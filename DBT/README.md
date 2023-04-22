## Setting up dbt for using BigQuery
You will need to create a dbt cloud account using [this link](https://www.getdbt.com/signup/) and connect to your warehouse following [these instructions](https://docs.getdbt.com/docs/cloud/manage-access/set-up-bigquery-oauth). More detailed instructions in [here](https://github.com/DataTalksClub/data-engineering-zoomcamp/blob/92917ec5d4eb8da1ed07c498685b80d03f06b7f5/week_4_analytics_engineering/dbt_cloud_setup.md).

## Starting a Dbt project
### Using BigQuery + dbt cloud
- Starting a new project with dbt init (dbt cloud and core)
- dbt cloud setup
- project.yml

[Video](https://www.youtube.com/watch?v=iMxh6s_wL4Q&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=35)

### Development of dbt models
- Anatomy of a dbt model: written code vs compiled Sources
- Materialisations: table, view, incremental, ephemeral
- Seeds, sources and ref
- Jinja and Macros
- Packages
- Variables
[Video](https://www.youtube.com/watch?v=UVI30Vxzd6c&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=37)
### Testing and documenting dbt models
- Tests
- Documentation
[Video](https://www.youtube.com/watch?v=UishFmq1hLM&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=38)

### Deploying a dbt project
- Deployment: development environment vs production
- dbt cloud: scheduler, sources and hosted documentation
[Video](https://www.youtube.com/watch?v=rjf6yZNGX8I&list=PL3MmuxUbc_hJed7dXYoJw8DoCuVHhGEQb&index=39)
