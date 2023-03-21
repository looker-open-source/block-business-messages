view: period_over_period {
  extension: required

###  Period over Period : Compare any period with the previous preceding period of the same length

  filter: date_filter {
    label: "Date Filter REQUIRED for YoY analysis"
    view_label: "YoY"
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering. Default is past 7days"
    type: date
  }

  dimension: filter_start_date {
    view_label: "YoY"
    hidden: yes
    type: date
    sql: {% if date_filter._is_filtered %}
            TIMESTAMP({% date_start date_filter %})
        {% else %} TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL -6 DAY)
        {% endif %};;
  }

  dimension: filter_end_date {
    view_label: "YoY"
    hidden: yes
    type: date
    sql: {% if date_filter._is_filtered %}
            TIMESTAMP({% date_end date_filter %})
        {% else %} TIMESTAMP_ADD(CURRENT_TIMESTAMP(), INTERVAL 1 DAY)
        {% endif %};;
  }

  dimension: interval {
    view_label: "YoY"
    hidden: yes
    type: number
    sql: date_diff(${filter_start_date}, ${filter_end_date}, day);;
  }

  #start date of the previous period
  dimension: previous_start_date {
    view_label: "YoY"
    hidden: yes
    type: string
    sql: DATE_ADD(${filter_start_date}, INTERVAL - 1 YEAR);;
  }

  dimension: previous_end_date {
    view_label: "YoY"
    hidden: yes
    type: string
    sql: DATE_ADD(${filter_end_date}, INTERVAL - 1 YEAR);;
  }

  ## For filtered measures
  dimension: is_current_period {
    view_label: "YoY"
    hidden: yes
    type: yesno
    sql: ${date_date} >= ${filter_start_date} AND ${date_date} < ${filter_end_date} ;;
  }

  dimension: is_previous_period {
    view_label: "YoY"
    hidden: yes
    type: yesno
    sql: ${date_date} >= ${previous_start_date} AND ${date_date} < ${previous_end_date} ;;
  }


  dimension: timeframes {
    view_label: "YoY"
    label: "YoY timeframes"
    type: string
    case: {
      when: {
        sql: ${is_current_period} = true;;
        label: "Selected Period"
      }
      when: {
        sql: ${is_previous_period} = true;;
        label: "Previous Period"
      }
      else: "Not in time period"
    }
  }

  dimension: day_in_period {
    view_label: "YoY"
    hidden: yes
    description: "Gives the number of days since the start of each period. Use this to align the event dates onto the same axis, the axes will read 1,2,3, etc."
    type: number
    sql:
            CASE
            WHEN ${is_current_period}
            THEN DATE_DIFF(DATE(${filter_start_date}), ${date_date}, DAY)
            WHEN ${is_previous_period}
            THEN DATE_DIFF(${previous_start_date}, ${date_date}, DAY)
            END
        ;;
  }

  dimension: order_for_period {
    hidden: yes
    type: number
    sql:
                CASE
                WHEN {% condition date_filter %} TIMESTAMP(${date_date}) {% endcondition %}
                THEN 1
                WHEN ${date_date} between ${previous_start_date} and ${previous_end_date}
                THEN 2
                END

            ;;
  }

  dimension_group: date_in_period {
    label: "Current Period"
    type: time
    sql: DATE_ADD( TIMESTAMP(${filter_start_date}), INTERVAL (-${day_in_period} +1 ) DAY );;
    view_label: "YoY"
    timeframes: [
      date, week
      ]
  }


  dimension: period {
    hidden: yes
    view_label: "YoY"
    label: "Period"
    description: "Pivot me! Returns the period the metric covers, i.e. either the 'This Period' or 'Previous Period'"
    type: string
    sql:
                CASE
                WHEN {% condition date_filter %} TIMESTAMP(${date_date}) {% endcondition %}
                THEN 'This Year'
                WHEN ${date_date} between ${previous_start_date} and ${previous_end_date}
                THEN 'Last Year'
                END
            ;;
    order_by_field: order_for_period
  }


  ## ---------------------- TO CREATE FILTERED MEASURES ---------------------------- ##

  dimension: period_filtered_measures {
    view_label: "YoY"
    hidden: yes
    type: string
    sql:
                CASE
                WHEN (${date_date}) between ${filter_start_date} and DATE_ADD(${filter_end_date} , INTERVAL -1 DAY) THEN 'this'
                WHEN ${date_date} between ${previous_start_date} and DATE_ADD(${previous_end_date}, INTERVAL -1 DAY) THEN 'last' END
     ;;
  }


}
