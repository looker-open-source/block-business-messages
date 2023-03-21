# Define the database connection to be used for this model.
connection: "@{GBM_CONNECTION}"


label: "Google Business Messages Block"

include: "/dashboards/*.dashboard"
include: "/explores/**/*.explore.lkml"

datagroup: daily {
  sql_trigger: SELECT current_date() ;;
  max_cache_age: "24 hours"
}

persist_with: daily
