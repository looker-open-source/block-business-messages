include: "/views/intent_metrics.view"
include: "/views/message_metrics.view"
include: "/views/quality_metrics.view"
include: "/views/session_metrics.view"
include: "/views/derived_tables/*.view.lkml"


explore: session_metrics {}

explore: message_metrics {}

explore: intent_metrics {}

explore: quality_metrics {}


###### Explore for session counts by entrypoint with all entrypoint options included ########
explore: entrypoint_activity {}
