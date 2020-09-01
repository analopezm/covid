view: covid_es {
  sql_table_name: `looker_covid.covid_es`
    ;;

  dimension: census_fips_code {
    type: string
    sql: ${TABLE}.census_fips_code ;;
  }

  dimension: country_region {
    type: string
    sql: ${TABLE}.country_region ;;
  }

  dimension: country_region_code {
    type: string
    sql: ${TABLE}.country_region_code ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: grocery_and_pharmacy_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.grocery_and_pharmacy_percent_change_from_baseline ;;
  }

  dimension: iso_3166_2_code {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.iso_3166_2_code ;;
  }


  dimension: metro_area {
    type: string
    sql: ${TABLE}.metro_area ;;
  }

  dimension: parks_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.parks_percent_change_from_baseline ;;
  }

  dimension: residential_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.residential_percent_change_from_baseline ;;
  }

  dimension: retail_and_recreation_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.retail_and_recreation_percent_change_from_baseline ;;
  }

  dimension: sub_region_1 {
    type: string
    sql: ${TABLE}.sub_region_1 ;;
  }

  dimension: sub_region_2 {
    type: string
    sql: ${TABLE}.sub_region_2 ;;
  }

  dimension: transit_stations_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.transit_stations_percent_change_from_baseline ;;
  }

  dimension: workplaces_percent_change_from_baseline {
    type: number
    sql: ${TABLE}.workplaces_percent_change_from_baseline ;;
  }

  measure: average_parks_percent_change_from_baseline {
    type: average
    sql:  ${parks_percent_change_from_baseline} ;;
    value_format_name: decimal_1
  }

  measure: average_residential_percent_change_from_baseline {
    type: average
    sql:  ${residential_percent_change_from_baseline} ;;
    value_format_name: decimal_1
  }
  measure: average_retail_and_recreation_percent_change_from_baseline {
    type: average
    sql:  ${retail_and_recreation_percent_change_from_baseline} ;;
    value_format_name: decimal_1
  }

  measure: average_transit_stations_percent_change_from_baseline {
    type: average
    sql:  ${transit_stations_percent_change_from_baseline} ;;
    value_format_name: decimal_1
  }

  measure: average_workplaces_percent_change_from_baseline {
    type: average
    sql:  ${workplaces_percent_change_from_baseline} ;;
    value_format_name: decimal_1
  }
  measure: count {
    type: count
    drill_fields: []
  }
  }
