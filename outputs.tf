output "dialogflow_conversation_profiles_id" {
  description = "Map of id values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_conversation_profiles_automated_agent_config" {
  description = "Map of automated_agent_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no automated_agent_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.automated_agent_config) if v.automated_agent_config != null && length(v.automated_agent_config) > 0 }
}
output "dialogflow_conversation_profiles_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_conversation_profiles_display_name" {
  description = "Map of display_name values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_conversation_profiles_human_agent_assistant_config" {
  description = "Map of human_agent_assistant_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no human_agent_assistant_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.human_agent_assistant_config) if v.human_agent_assistant_config != null && length(v.human_agent_assistant_config) > 0 }
}
output "dialogflow_conversation_profiles_human_agent_handoff_config" {
  description = "Map of human_agent_handoff_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no human_agent_handoff_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.human_agent_handoff_config) if v.human_agent_handoff_config != null && length(v.human_agent_handoff_config) > 0 }
}
output "dialogflow_conversation_profiles_language_code" {
  description = "Map of language_code values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no language_code are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "dialogflow_conversation_profiles_location" {
  description = "Map of location values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no location are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.location if v.location != null && length(v.location) > 0 }
}
output "dialogflow_conversation_profiles_logging_config" {
  description = "Map of logging_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no logging_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.logging_config) if v.logging_config != null && length(v.logging_config) > 0 }
}
output "dialogflow_conversation_profiles_name" {
  description = "Map of name values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_conversation_profiles_new_message_event_notification_config" {
  description = "Map of new_message_event_notification_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no new_message_event_notification_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.new_message_event_notification_config) if v.new_message_event_notification_config != null && length(v.new_message_event_notification_config) > 0 }
}
output "dialogflow_conversation_profiles_new_recognition_result_notification_config" {
  description = "Map of new_recognition_result_notification_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no new_recognition_result_notification_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.new_recognition_result_notification_config) if v.new_recognition_result_notification_config != null && length(v.new_recognition_result_notification_config) > 0 }
}
output "dialogflow_conversation_profiles_notification_config" {
  description = "Map of notification_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no notification_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.notification_config) if v.notification_config != null && length(v.notification_config) > 0 }
}
output "dialogflow_conversation_profiles_project" {
  description = "Map of project values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no project are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.project if v.project != null && length(v.project) > 0 }
}
output "dialogflow_conversation_profiles_security_settings" {
  description = "Map of security_settings values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no security_settings are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.security_settings if v.security_settings != null && length(v.security_settings) > 0 }
}
output "dialogflow_conversation_profiles_stt_config" {
  description = "Map of stt_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no stt_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.stt_config) if v.stt_config != null && length(v.stt_config) > 0 }
}
output "dialogflow_conversation_profiles_time_zone" {
  description = "Map of time_zone values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no time_zone are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => v.time_zone if v.time_zone != null && length(v.time_zone) > 0 }
}
output "dialogflow_conversation_profiles_tts_config" {
  description = "Map of tts_config values across all dialogflow_conversation_profiles, keyed the same as var.dialogflow_conversation_profiles except keys with no tts_config are omitted"
  value       = { for k, v in google_dialogflow_conversation_profile.dialogflow_conversation_profiles : k => one(v.tts_config) if v.tts_config != null && length(v.tts_config) > 0 }
}

