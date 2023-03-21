project_name: "block-business-messages"

## Connection Constants:
constant: GBM_CONNECTION {
  value: "4mile_bigquery"
  export: override_required
}

constant: GBM_SCHEMA {
  value: "gbm_looker_block"
  export: override_required
}

constant: GBM_TABLE_SESSION {
  value: "session_metrics"
  export: override_optional
}

constant: GBM_TABLE_MESSAGE {
  value: "message_metrics"
  export: override_optional
}

constant: GBM_TABLE_INTENT {
  value: "intent_metrics"
  export: override_optional
}

constant: GBM_TABLE_QUALITY {
  value: "quality_metrics"
  export: override_optional
}
