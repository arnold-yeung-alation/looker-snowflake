view: looker_event_dashboard_view {
  sql_table_name: "RETAIL"."LOOKER_EVENT_DASHBOARD_VIEW" ;;

  dimension: avg_engagement_score {
    type: number
    sql: ${TABLE}."AVG_ENGAGEMENT_SCORE" ;;
  }
  dimension: avg_survey_score {
    type: number
    sql: ${TABLE}."AVG_SURVEY_SCORE" ;;
  }
  dimension: engagement_category {
    type: string
    sql: ${TABLE}."ENGAGEMENT_CATEGORY" ;;
  }
  dimension: event_id {
    type: number
    sql: ${TABLE}."EVENT_ID" ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}."EVENT_NAME" ;;
  }
  dimension: total_registrations {
    type: number
    sql: ${TABLE}."TOTAL_REGISTRATIONS" ;;
  }
  dimension: total_revenue {
    type: number
    sql: ${TABLE}."TOTAL_REVENUE" ;;
  }
  measure: count {
    type: count
    drill_fields: [event_name]
  }
}
