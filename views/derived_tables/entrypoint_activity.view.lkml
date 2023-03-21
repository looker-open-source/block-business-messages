include: "/views/derived_tables/session_entrypoint_superset.view.lkml"
include: "/views/derived_tables/session_metrics_by_entrypoint.view.lkml"
view: entrypoint_activity {

   derived_table: {
    sql: SELECT *
        FROM `${session_entrypoint_superset.SQL_TABLE_NAME}`
        UNION ALL
        SELECT *
        FROM `${session_metrics_by_entrypoint.SQL_TABLE_NAME}`
      ;;
  }

  ############ Dimensions ################
  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: agent_id {
  type: string
  sql: ${TABLE}.agent_id ;;
  }

  dimension: brand_name {
  type: string
  sql: ${TABLE}.brand_name ;;
  }

  dimension: brand_id {
  type: string
  sql: ${TABLE}.brand_id ;;
  }

  # dimension_group: date {
  #   type: time
  #   timeframes: [date, week, month, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.date ;;
  # }

  dimension: session_initiating_entry_point {
    type: string
    sql: ${TABLE}.entry_point ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.session_count ;;
  }

  ############ Measures ###################

  measure: sum_of_sessions {
    type: sum
    sql: ${sessions} ;;
  }

  measure: entrypoint_activity {
    type: string
    sql: case when ${sum_of_sessions} = 0 then "🔴 Not Active" else "🟢 Active" end ;;
  }

  }
