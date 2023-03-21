include: "period_over_period.view.lkml"
# The name of this view in Looker is "Session Metrics"
view: session_metrics {
  extends: [period_over_period]
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GBM_SCHEMA}.@{GBM_TABLE_SESSION}`
    ;;


  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Agent ID" in Explore.

  dimension: agent_id {
    type: string
    sql: ${TABLE}.agent_id ;;
  }

  dimension: agent_name {
    type: string
    sql: ${TABLE}.agent_name ;;
  }

  dimension: average_session_depth {
    type: number
    sql: ${TABLE}.average_session_depth ;;
  }


  dimension: brand_id {
    type: string
    sql: ${TABLE}.brand_id ;;
  }

  dimension: brand_name {
    type: string
    sql: ${TABLE}.brand_name ;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: date {
    label: "Session"
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

  dimension: has_agent_response {
    type: yesno
    sql: ${TABLE}.has_agent_response ;;
  }

  dimension: has_live_agent_request {
    type: yesno
    sql: ${TABLE}.has_live_agent_request ;;
  }

  dimension: has_live_agent_response {
    type: yesno
    sql: ${TABLE}.has_live_agent_response ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
  }

  dimension: positive_survey_response {
    type: yesno
    sql: ${TABLE}.positive_survey_response ;;
  }

  dimension: session_containment_type {
    type: string
    sql: ${TABLE}.session_containment_type ;;
  }

  dimension: session_depth_bucket {
    type: string
    sql: ${TABLE}.session_depth_bucket ;;
  }

  dimension: session_initiating_entry_point {
    type: string
    sql: ${TABLE}.session_initiating_entry_point ;;
  }

  dimension: session_initiator {
    type: string
    sql: ${TABLE}.session_initiator ;;
  }

  dimension: survey_responded {
    type: yesno
    sql: ${TABLE}.survey_responded ;;
  }

  dimension: survey_sent {
    type: yesno
    sql: ${TABLE}.survey_sent ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: count {
    type: count
    drill_fields: [agent_name, partner_name, brand_name]
  }

  measure: total_average_session_depth {
    type: sum
    sql: ${average_session_depth} ;;
  }

  measure: average_average_session_depth {
    type: average
    sql: ${average_session_depth} ;;
    value_format_name: decimal_2
  }

  measure: sum_of_sessions {
    type: sum
    sql: ${total_sessions} ;;
  }

  # Filtered measures
  measure: current_year_sessions {
    view_label: "YoY"
    type: sum
    sql: ${total_sessions};;
    filters: [period_filtered_measures: "this"]
  }

  measure: previous_year_sessions {
    view_label: "YoY"
    type: sum
    sql: ${total_sessions};;
    filters: [period_filtered_measures: "last"]
  }

}
