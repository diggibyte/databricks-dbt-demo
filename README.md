Load databricks based project 

### Using the starter project

Try running the following commands:

- To Load External table  
dbt run-operation stage_external_sources --vars "ext_full_refresh: true"

- To Run with variable  
dbt run --vars '{ ing_date : yyyymmdd}'   --profiles-dir /path/to/profiles/databricks  
  
- To Generate Doc  
dbt docs generate --profiles-dir /path/to/profiles/databricks
### Resources:


on-run-end: "{{ dbt_artifacts.upload_results(results) }}"
dbt_artifacts:
+schema: audit
bronze:
+schema: bronze
silver:
+schema: silver
gold:
+schema: gold

on-run-end: "{{ dbt_artifacts.upload_results(results) }}"