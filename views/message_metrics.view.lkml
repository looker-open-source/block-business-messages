# The name of this view in Looker is "Message Metrics"
view: message_metrics {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `@{GBM_SCHEMA}.@{GBM_TABLE_MESSAGE}`
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

  dimension_group: date {
    label: "Message"
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

  dimension: message_sender {
    type: string
    sql: ${TABLE}.message_sender ;;
  }

  dimension: message_type {
    type: string
    sql: ${TABLE}.message_type ;;
  }

  dimension: partner_id {
    type: string
    sql: ${TABLE}.partner_id ;;
  }

  dimension: partner_name {
    type: string
    sql: ${TABLE}.partner_name ;;
  }

  dimension: representative_type {
    type: string
    sql: CASE WHEN ${TABLE}.representative_type is null THEN "UNKNOWN" ELSE ${TABLE}.representative_type END ;;
  }

  dimension: total_messages {
    type: number
    sql: ${TABLE}.total_messages ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_total_messages {
    type: sum
    sql: ${total_messages} ;;
  }

  measure: average_total_messages {
    type: average
    sql: ${total_messages} ;;
  }

  measure: count {
    type: count
    drill_fields: [agent_name, partner_name, brand_name]
  }


}
