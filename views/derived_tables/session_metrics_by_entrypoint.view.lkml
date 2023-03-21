view: session_metrics_by_entrypoint {
  derived_table: {
    explore_source: session_metrics {
      column: agent_id {}
      column: agent_name {}
      column: brand_id {}
      column: brand_name {}
      column: session_initiating_entry_point {}
      column: sum_of_sessions {}
    }
  }

  ########## Dimensions ################

  dimension: session_initiating_entry_point {
    description: ""
  }
  dimension: brand_name {
    description: ""
  }
  dimension: sum_of_sessions {
    description: ""
    type: number
  }

 ########## Measures ################
  measure: total_sessions {
    type: sum
    sql: ${sum_of_sessions} ;;
  }
}
