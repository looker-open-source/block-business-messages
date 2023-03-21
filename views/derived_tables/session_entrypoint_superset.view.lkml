view: session_entrypoint_superset {
  derived_table: {
    sql:
     with all_entrypoints AS
      (SELECT 'ENTRY_POINT_UNSPECIFIED' AS entry_point
      UNION ALL
      SELECT 'PLACESHEET'
      UNION ALL
      SELECT 'MAPS'
      UNION ALL
      SELECT 'FEATURED_SNIPPETS'
      UNION ALL
      SELECT 'SITELINKS'
      UNION ALL
      SELECT 'WEB_WIDGET'
      UNION ALL
      SELECT 'PHONE'
      UNION ALL
      SELECT 'URL'
      UNION ALL
      SELECT 'LOCAL_PACK'
      UNION ALL
      SELECT 'ADS'
      UNION ALL
      SELECT 'PREVIEW'
      UNION ALL
      SELECT 'SHOPPING'
      )

      , brand_names AS
      (SELECT agent_id, agent_name, brand_id, brand_name, session_initiating_entry_point, 0 AS session_count
      FROM `@{GBM_SCHEMA}.@{GBM_TABLE_SESSION}`
      )

      , brand_entrypoint_cross AS
      ( SELECT *
      FROM brand_names
      CROSS JOIN all_entrypoints
      )

      SELECT agent_id, agent_name, brand_id, brand_name, entry_point, session_count
      FROM brand_entrypoint_cross

      ;;
  }


  ############## Dimnesions ###################
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

  dimension_group: date {
    type: time
    timeframes: [date, week, month]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date ;;
  }

  dimension: session_initiating_entry_point {
    type: string
    sql: ${TABLE}.entry_point ;;
  }

  dimension: session_count {
    type: number
    sql: ${TABLE}.session_count ;;
  }


}
