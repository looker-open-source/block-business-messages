include: "period_over_period.view.lkml"
# The name of this view in Looker is "Quality Metrics"
view: quality_metrics {
  extends: [period_over_period]
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GBM_SCHEMA}.@{GBM_TABLE_QUALITY}`
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

  dimension_group: date_calculated {
    hidden: yes
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
    sql: ${TABLE}.date_calculated ;;
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
    sql: ${TABLE}.date_calculated ;;
  }

  dimension: hmrr {
    type: number
    sql: ${TABLE}.hmrr ;;
  }

  dimension: live_agent_request_count {
    type: number
    sql: ${TABLE}.live_agent_request_count ;;
  }

  dimension: mrr {
    type: number
    sql: ${TABLE}.mrr ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
  }

  dimension: session_count {
    type: number
    sql: ${TABLE}.session_count ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: survey_count {
    type: number
    sql: ${TABLE}.survey_count ;;
  }

  dimension: survey_score {
    type: number
    sql: ${TABLE}.survey_score ;;
  }

  dimension: suspension_date {
    type: string
    sql: ${TABLE}.suspension_date ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_session_count {
    type: sum
    sql: ${session_count} ;;
  }

  measure: average_session_count {
    type: average
    sql: ${session_count} ;;
  }

  measure: avg_mrr {
    label: "Avg. MRR"
    type: average
    sql: ${mrr};;
    value_format_name: percent_1
  }

  measure: avg_hmrr {
    label: "Avg. HMRR"
    type: average
    sql: ${hmrr};;
    value_format_name: percent_1
  }

  measure: count {
    type: count
    drill_fields: [agent_name, partner_name, brand_name]
  }

  measure: sum_of_survey_count {
    label: "Sum of Survey Count"
    type: sum
    sql: ${survey_count} ;;
  }

  measure: avg_postive_survey_response {
    label: "Avg. Positive Survey Response(%)"
    type: average
    sql: ${survey_score} ;;
    value_format_name: percent_1
  }
}
