connection: "analopezm_covid"

# include all the views
include: "/views/**/*.view"

datagroup: analopezm_covid_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: analopezm_covid_default_datagroup

explore: covid {}

explore: covid_es {}
