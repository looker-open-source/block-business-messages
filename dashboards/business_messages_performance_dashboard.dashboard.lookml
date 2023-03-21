- dashboard: business_messages_performance_dashboard
  title: Business Messages Performance Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: gCkV3KIKQ9voMLOfwLg5FO
  elements:
  - name: ''
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 1px #1A73E8; border-radius: 5px; padding:\
      \ 0px 10px; background: #4c8bf5; text-align: center; margin-bottom: 10px;\"\
      >\n\t<p style=\"font-size:180%; color: white;\"> Performance Summary</p>\n\n\
      \n"
    row: 0
    col: 0
    width: 22
    height: 3
  - title: Sessions by Week
    name: Sessions by Week
    model: block_business_messages
    explore: session_metrics
    type: looker_line
    fields: [session_metrics.date_in_period_week, session_metrics.current_year_sessions,
      session_metrics.previous_year_sessions]
    fill_fields: [session_metrics.date_in_period_week]
    filters:
      session_metrics.date_in_period_week: NOT NULL
    sorts: [session_metrics.date_in_period_week]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: session_metrics.sum_of_sessions,
            id: session_metrics.sum_of_sessions, name: Sum of Sessions}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      session_metrics.previous_year_sessions: "#DADCE0"
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: "A session is a time-bound grouping of interactions, such as messages\
      \ and events in a conversation. A session begins when a message is sent and\
      \ a session isn't already currently active. A session closes when there are\
      \ no messages in a given amount of time or when a survey is sent. \n\n<br><a\
      \ href=\"https://developers.google.com/business-communications/business-messages/guides/how-to/qa/metrics\"\
      \ style=\"color: white\">Link to GBM Metrics Page for more information. </a>"
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_filter
    row: 6
    col: 0
    width: 22
    height: 6
  - title: Sessions by Entrypoint
    name: Sessions by Entrypoint
    model: block_business_messages
    explore: session_metrics
    type: looker_pie
    fields: [session_metrics.session_initiating_entry_point, session_metrics.sum_of_sessions]
    sorts: [session_metrics.session_initiating_entry_point]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: '<a href="https://developers.google.com/business-communications/business-messages/guides/concepts/entry-point"
      style="color: white">Link to Entrypoint Descriptions Page </a>'
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_date
    row: 30
    col: 0
    width: 11
    height: 8
  - title: Messages by Agent Type
    name: Messages by Agent Type
    model: block_business_messages
    explore: message_metrics
    type: looker_pie
    fields: [message_metrics.representative_type, message_metrics.total_total_messages]
    sorts: [message_metrics.total_total_messages desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    series_colors:
      HUMAN: "#185ABC"
      BOT: "#EA8600"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: "% of messages sent by representative type: Bot vs. Human"
    listen:
      Brand Name: message_metrics.brand_name
      Agent Name: message_metrics.agent_name
      Date: message_metrics.date_date
    row: 49
    col: 0
    width: 9
    height: 7
  - title: Weekly Messages by Agent Type
    name: Weekly Messages by Agent Type
    model: block_business_messages
    explore: message_metrics
    type: looker_column
    fields: [message_metrics.representative_type, message_metrics.total_total_messages,
      message_metrics.date_week]
    pivots: [message_metrics.representative_type]
    fill_fields: [message_metrics.date_week]
    sorts: [message_metrics.representative_type, message_metrics.total_total_messages
        desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    y_axes: [{label: Total Messages, orientation: left, series: [{axisId: BOT - message_metrics.total_total_messages,
            id: BOT - message_metrics.total_total_messages, name: BOT}, {axisId: HUMAN
              - message_metrics.total_total_messages, id: HUMAN - message_metrics.total_total_messages,
            name: HUMAN}], showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      BOT - message_metrics.total_total_messages: "#EA8600"
      HUMAN - message_metrics.total_total_messages: "#185ABC"
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Weekly messages sent by representative type: Bot vs. Human'
    listen:
      Brand Name: message_metrics.brand_name
      Agent Name: message_metrics.agent_name
      Date: message_metrics.date_date
    row: 49
    col: 9
    width: 13
    height: 7
  - title: Sessions
    name: Sessions
    model: block_business_messages
    explore: session_metrics
    type: single_value
    fields: [session_metrics.timeframes, session_metrics.sum_of_sessions]
    fill_fields: [session_metrics.timeframes]
    filters: {}
    sorts: [session_metrics.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [session_metrics.sum_of_sessions], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: session_metrics.sum_of_sessions, label: Percent
          change from previous - Session Metrics Sum of Sessions, source_field: session_metrics.sum_of_sessions,
        table_calculation: percent_change_from_previous_session_metrics_sum_of_sessions,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    comparison_label: YoY Change
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_filter
    row: 3
    col: 0
    width: 4
    height: 3
  - title: Avg Session Depth
    name: Avg Session Depth
    model: block_business_messages
    explore: session_metrics
    type: single_value
    fields: [session_metrics.timeframes, session_metrics.average_average_session_depth]
    fill_fields: [session_metrics.timeframes]
    filters: {}
    sorts: [session_metrics.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields: [{args: [session_metrics.average_average_session_depth], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: session_metrics.average_average_session_depth,
        label: Percent change from previous - Session Metrics Average Average Session
          Depth, source_field: session_metrics.average_average_session_depth, table_calculation: percent_change_from_previous_session_metrics_average_average_session_depth,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
    comparison_label: YoY Change
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_filter
    row: 3
    col: 4
    width: 5
    height: 3
  - title: Avg MRR(%)
    name: Avg MRR(%)
    model: block_business_messages
    explore: quality_metrics
    type: single_value
    fields: [quality_metrics.avg_mrr, quality_metrics.timeframes]
    fill_fields: [quality_metrics.timeframes]
    filters: {}
    sorts: [quality_metrics.timeframes]
    limit: 500
    dynamic_fields: [{args: [quality_metrics.avg_mrr], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: quality_metrics.avg_mrr, label: Percent
          change from previous - Quality Metrics Avg. MRR, source_field: quality_metrics.avg_mrr,
        table_calculation: percent_change_from_previous_quality_metrics_avg_mrr, value_format: !!null '',
        value_format_name: percent_0, _kind_hint: measure, _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: YoY Change
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    defaults_version: 1
    series_types: {}
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_filter
    row: 3
    col: 9
    width: 4
    height: 3
  - title: Avg HMRR(%)
    name: Avg HMRR(%)
    model: block_business_messages
    explore: quality_metrics
    type: single_value
    fields: [quality_metrics.avg_hmrr, quality_metrics.timeframes]
    fill_fields: [quality_metrics.timeframes]
    filters: {}
    sorts: [quality_metrics.timeframes]
    limit: 500
    dynamic_fields: [{args: [quality_metrics.avg_hmrr], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: quality_metrics.avg_hmrr, label: Percent
          change from previous - Quality Metrics Avg. HMRR, source_field: quality_metrics.avg_hmrr,
        table_calculation: percent_change_from_previous_quality_metrics_avg_hmrr,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: YoY Change
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_filter
    row: 3
    col: 13
    width: 4
    height: 3
  - title: Positive Survey(%)
    name: Positive Survey(%)
    model: block_business_messages
    explore: quality_metrics
    type: single_value
    fields: [quality_metrics.timeframes, quality_metrics.avg_postive_survey_response]
    fill_fields: [quality_metrics.timeframes]
    filters: {}
    sorts: [quality_metrics.timeframes]
    limit: 500
    dynamic_fields: [{args: [quality_metrics.avg_postive_survey_response], calculation_type: percent_difference_from_previous,
        category: table_calculation, based_on: quality_metrics.avg_postive_survey_response,
        label: Percent change from previous - Quality Metrics Avg. Positive Survey
          Response(%), source_field: quality_metrics.avg_postive_survey_response,
        table_calculation: percent_change_from_previous_quality_metrics_avg_positive_survey_response,
        value_format: !!null '', value_format_name: percent_0, _kind_hint: measure,
        _type_hint: number}]
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    comparison_label: YoY Change
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    series_types: {}
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_filter
    row: 3
    col: 17
    width: 5
    height: 3
  - title: Count by Intent
    name: Count by Intent
    model: block_business_messages
    explore: intent_metrics
    type: looker_pie
    fields: [intent_metrics.intent, intent_metrics.total_count_intent_metrics]
    sorts: [intent_metrics.total_count_intent_metrics desc 0]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors:
      SALES_LEADS: "#DADCE0"
      SERVICE: "#185ABC"
    series_types: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: Intent metrics use machine learning to identify the intent of sessions
      with your agent. Intent metrics are drawn from user messages in completed sessions
      for a given day.
    listen:
      Brand Name: intent_metrics.brand_name
      Agent Name: intent_metrics.agent_name
      Date: intent_metrics.date_date
    row: 56
    col: 14
    width: 8
    height: 8
  - title: Merchant Response Rate(%) by Week
    name: Merchant Response Rate(%) by Week
    model: block_business_messages
    explore: quality_metrics
    type: looker_column
    fields: [quality_metrics.avg_mrr, quality_metrics.date_week]
    fill_fields: [quality_metrics.date_week]
    sorts: [quality_metrics.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    x_axis_label: Week
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0%
    series_types: {}
    series_colors:
      AirSky - quality_metrics.avg_mrr: "#34A853"
      Anup's Art Restoration - quality_metrics.avg_mrr: "#4285F4"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Merchant Response Rate (MRR) : The number of sessions that had agent
      responses (bot or live agent) relative to the total number of sessions.'
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_date
    row: 64
    col: 0
    width: 11
    height: 8
  - title: Human Merchant Response Rate(%) by Week
    name: Human Merchant Response Rate(%) by Week
    model: block_business_messages
    explore: quality_metrics
    type: looker_column
    fields: [quality_metrics.avg_hmrr, quality_metrics.date_week]
    fill_fields: [quality_metrics.date_week]
    sorts: [quality_metrics.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    x_axis_label: Week
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0%
    series_types: {}
    series_colors:
      AirSky - quality_metrics.avg_hmrr: "#34A853"
      Anup's Art Restoration - quality_metrics.avg_hmrr: "#4285F4"
      quality_metrics.avg_hmrr: "#34A853"
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: 'Human Merchant Response Rate (HMRR) : The number of sessions that
      had live agent responses relative to the total number of sessions that contained
      one or more live agent requests or live agent responses.'
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_date
    row: 64
    col: 11
    width: 11
    height: 8
  - title: Weekly Sessions by Entrypoint
    name: Weekly Sessions by Entrypoint
    model: block_business_messages
    explore: session_metrics
    type: looker_line
    fields: [session_metrics.session_initiating_entry_point, session_metrics.sum_of_sessions,
      session_metrics.date_week]
    pivots: [session_metrics.session_initiating_entry_point]
    fill_fields: [session_metrics.date_week]
    sorts: [session_metrics.session_initiating_entry_point, session_metrics.sum_of_sessions
        desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: '<a href="https://developers.google.com/business-communications/business-messages/guides/concepts/entry-point"
      style="color: white">Link to Entrypoint Descriptions Page </a>'
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_date
    row: 21
    col: 0
    width: 22
    height: 9
  - title: Avg Session Depth by Week
    name: Avg Session Depth by Week
    model: block_business_messages
    explore: session_metrics
    type: looker_line
    fields: [session_metrics.date_week, session_metrics.average_average_session_depth]
    fill_fields: [session_metrics.date_week]
    sorts: [session_metrics.date_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: session_metrics.sum_of_sessions,
            id: session_metrics.sum_of_sessions, name: Sum of Sessions}], showLabels: true,
        showValues: false, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      session_metrics.average_average_session_depth: "#34A853"
    series_labels:
      session_metrics.average_average_session_depth: Average Session Depth
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: Average Session Depth is the average number of messages exchanged during
      the sessions
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_date
    row: 12
    col: 0
    width: 22
    height: 6
  - title: Activity by Entrypoint (all-time activity)
    name: Activity by Entrypoint (all-time activity)
    model: block_business_messages
    explore: entrypoint_activity
    type: looker_grid
    fields: [entrypoint_activity.brand_name, entrypoint_activity.session_initiating_entry_point,
      entrypoint_activity.sum_of_sessions, entrypoint_activity.entrypoint_activity]
    pivots: [entrypoint_activity.brand_name]
    sorts: [entrypoint_activity.brand_name, entrypoint_activity.session_initiating_entry_point]
    limit: 500
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    hidden_fields: [entrypoint_activity.sum_of_sessions]
    hidden_pivots: {}
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: |-
      Entrypoints flagged as "Not Active" have no recorded sessions for that particular entrypoint (looking at all-time activity). <br>

      <a href="https://developers.google.com/business-communications/business-messages/guides/concepts/entry-point" style="color: white">Link to Entrypoint Descriptions Page </a>
    listen:
      Brand Name: entrypoint_activity.brand_name
      Agent Name: entrypoint_activity.agent_name
    row: 38
    col: 0
    width: 22
    height: 8
  - title: Avg Survey Results by Week
    name: Avg Survey Results by Week
    model: block_business_messages
    explore: quality_metrics
    type: looker_column
    fields: [quality_metrics.date_week, quality_metrics.sum_of_survey_count, quality_metrics.avg_postive_survey_response]
    fill_fields: [quality_metrics.date_week]
    sorts: [quality_metrics.date_week]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: quality_metrics.sum_of_survey_count,
            id: quality_metrics.sum_of_survey_count, name: Sum of Survey Count}],
        showLabels: true, showValues: true, maxValue: !!null '', minValue: !!null '',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear},
      {label: '', orientation: right, series: [{axisId: quality_metrics.avg_postive_survey_response,
            id: quality_metrics.avg_postive_survey_response, name: Avg. Positive Survey
              Response(%)}], showLabels: true, showValues: true, maxValue: 1, minValue: 0,
        valueFormat: 0%, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      quality_metrics.customer_satisfaction: line
      quality_metrics.avg_postive_survey_response: line
    series_colors:
      quality_metrics.sum_of_survey_count: "#F3AA18"
      quality_metrics.customer_satisfaction: "#1F78B4"
      quality_metrics.avg_postive_survey_response: "#2c556b"
    x_axis_datetime_label: "%b %d"
    hidden_pivots: {}
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: "Survey Count: \nNumber of surveys used to calculate the survey score.\n\
      <br>\n<br>\nPositive Survey Response (%):\nPositive Survey Response % is measured\
      \ by surveys sent to users after their session. It is calculated by the number\
      \ of positive survey responses divided by the total number of surveys sent to\
      \ users."
    listen:
      Brand Name: quality_metrics.brand_name
      Agent Name: quality_metrics.agent_name
      Date: quality_metrics.date_date
    row: 56
    col: 0
    width: 14
    height: 8
  - name: " (2)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 1px #1A73E8; border-radius: 5px; padding:\
      \ 0px 10px; background: #4c8bf5; text-align: center; margin-bottom: 10px;\"\
      >\n\t<p style=\"font-size:180%; color: white;\"> Quality, Intent and Agent Metrics</p>\n\
      \n\n"
    row: 46
    col: 0
    width: 22
    height: 3
  - name: " (3)"
    type: text
    title_text: ''
    subtitle_text: ''
    body_text: "<div style=\"border: solid 1px #1A73E8; border-radius: 5px; padding:\
      \ 0px 10px; background: #4c8bf5; text-align: center; margin-bottom: 10px;\"\
      >\n\t<p style=\"font-size:180%; color: white;\"> Entrypoint Breakdown</p>\n\n\
      \n"
    row: 18
    col: 0
    width: 22
    height: 3
  - title: Sessions by Entrypoint
    name: Sessions by Entrypoint (2)
    model: block_business_messages
    explore: session_metrics
    type: looker_grid
    fields: [session_metrics.session_initiating_entry_point, session_metrics.sum_of_sessions,
      session_metrics.brand_name]
    pivots: [session_metrics.brand_name]
    sorts: [session_metrics.brand_name, session_metrics.session_initiating_entry_point]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: unstyled
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '14'
    rows_font_size: '14'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: gcp
      palette_id: gcp-categorical-0
      options:
        steps: 5
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_cell_visualizations:
      session_metrics.sum_of_sessions:
        is_active: true
        palette:
          palette_id: 3195d136-4fea-dd9d-2f29-32a238c940b0
          collection_id: gcp
          custom_colors:
          - "#4cf572"
          - "#137333"
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    note_state: collapsed
    note_display: hover
    note_text: '<a href="https://developers.google.com/business-communications/business-messages/guides/concepts/entry-point"
      style="color: white">Link to Entrypoint Descriptions Page </a>'
    listen:
      Brand Name: session_metrics.brand_name
      Agent Name: session_metrics.agent_name
      Date: session_metrics.date_date
    row: 30
    col: 11
    width: 11
    height: 8
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: 12 week
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: block_business_messages
    explore: session_metrics
    listens_to_filters: []
    field: session_metrics.date_date
  - name: Brand Name
    title: Brand Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: block_business_messages
    explore: session_metrics
    listens_to_filters: []
    field: session_metrics.brand_name
  - name: Agent Name
    title: Agent Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: block_business_messages
    explore: session_metrics
    listens_to_filters: [Brand Name]
    field: session_metrics.agent_name
