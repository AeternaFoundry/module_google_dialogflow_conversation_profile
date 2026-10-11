resource "google_dialogflow_conversation_profile" "dialogflow_conversation_profiles" {
  for_each = var.dialogflow_conversation_profiles

  display_name      = each.value.display_name
  location          = each.value.location
  deletion_policy   = each.value.deletion_policy
  language_code     = each.value.language_code
  project           = each.value.project
  security_settings = each.value.security_settings
  time_zone         = each.value.time_zone

  dynamic "automated_agent_config" {
    for_each = each.value.automated_agent_config != null ? [each.value.automated_agent_config] : []
    content {
      agent       = automated_agent_config.value.agent
      session_ttl = automated_agent_config.value.session_ttl
    }
  }

  dynamic "human_agent_assistant_config" {
    for_each = each.value.human_agent_assistant_config != null ? [each.value.human_agent_assistant_config] : []
    content {
      dynamic "end_user_suggestion_config" {
        for_each = human_agent_assistant_config.value.end_user_suggestion_config != null ? [human_agent_assistant_config.value.end_user_suggestion_config] : []
        content {
          disable_high_latency_features_sync_delivery = end_user_suggestion_config.value.disable_high_latency_features_sync_delivery
          dynamic "feature_configs" {
            for_each = end_user_suggestion_config.value.feature_configs != null ? end_user_suggestion_config.value.feature_configs : []
            content {
              dynamic "conversation_model_config" {
                for_each = feature_configs.value.conversation_model_config != null ? [feature_configs.value.conversation_model_config] : []
                content {
                  baseline_model_version = conversation_model_config.value.baseline_model_version
                  model                  = conversation_model_config.value.model
                }
              }
              dynamic "conversation_process_config" {
                for_each = feature_configs.value.conversation_process_config != null ? [feature_configs.value.conversation_process_config] : []
                content {
                  recent_sentences_count = conversation_process_config.value.recent_sentences_count
                }
              }
              disable_agent_query_logging            = feature_configs.value.disable_agent_query_logging
              enable_conversation_augmented_query    = feature_configs.value.enable_conversation_augmented_query
              enable_event_based_suggestion          = feature_configs.value.enable_event_based_suggestion
              enable_query_suggestion_only           = feature_configs.value.enable_query_suggestion_only
              enable_query_suggestion_when_no_answer = feature_configs.value.enable_query_suggestion_when_no_answer
              dynamic "query_config" {
                for_each = feature_configs.value.query_config != null ? [feature_configs.value.query_config] : []
                content {
                  confidence_threshold = query_config.value.confidence_threshold
                  dynamic "context_filter_settings" {
                    for_each = query_config.value.context_filter_settings != null ? [query_config.value.context_filter_settings] : []
                    content {
                      drop_handoff_messages       = context_filter_settings.value.drop_handoff_messages
                      drop_ivr_messages           = context_filter_settings.value.drop_ivr_messages
                      drop_virtual_agent_messages = context_filter_settings.value.drop_virtual_agent_messages
                    }
                  }
                  dynamic "dialogflow_query_source" {
                    for_each = query_config.value.dialogflow_query_source != null ? [query_config.value.dialogflow_query_source] : []
                    content {
                      agent = dialogflow_query_source.value.agent
                      dynamic "human_agent_side_config" {
                        for_each = dialogflow_query_source.value.human_agent_side_config != null ? [dialogflow_query_source.value.human_agent_side_config] : []
                        content {
                          agent = human_agent_side_config.value.agent
                        }
                      }
                    }
                  }
                  dynamic "document_query_source" {
                    for_each = query_config.value.document_query_source != null ? [query_config.value.document_query_source] : []
                    content {
                      documents = document_query_source.value.documents
                    }
                  }
                  dynamic "knowledge_base_query_source" {
                    for_each = query_config.value.knowledge_base_query_source != null ? [query_config.value.knowledge_base_query_source] : []
                    content {
                      knowledge_bases = knowledge_base_query_source.value.knowledge_bases
                    }
                  }
                  max_results = query_config.value.max_results
                  dynamic "sections" {
                    for_each = query_config.value.sections != null ? [query_config.value.sections] : []
                    content {
                      section_types = sections.value.section_types
                    }
                  }
                }
              }
              dynamic "suggestion_feature" {
                for_each = feature_configs.value.suggestion_feature != null ? [feature_configs.value.suggestion_feature] : []
                content {
                  type = suggestion_feature.value.type
                }
              }
              dynamic "suggestion_trigger_settings" {
                for_each = feature_configs.value.suggestion_trigger_settings != null ? [feature_configs.value.suggestion_trigger_settings] : []
                content {
                  no_small_talk = suggestion_trigger_settings.value.no_small_talk
                  only_end_user = suggestion_trigger_settings.value.only_end_user
                }
              }
            }
          }
          generators                 = end_user_suggestion_config.value.generators
          group_suggestion_responses = end_user_suggestion_config.value.group_suggestion_responses
        }
      }
      dynamic "human_agent_suggestion_config" {
        for_each = human_agent_assistant_config.value.human_agent_suggestion_config != null ? [human_agent_assistant_config.value.human_agent_suggestion_config] : []
        content {
          disable_high_latency_features_sync_delivery = human_agent_suggestion_config.value.disable_high_latency_features_sync_delivery
          dynamic "feature_configs" {
            for_each = human_agent_suggestion_config.value.feature_configs != null ? human_agent_suggestion_config.value.feature_configs : []
            content {
              dynamic "conversation_model_config" {
                for_each = feature_configs.value.conversation_model_config != null ? [feature_configs.value.conversation_model_config] : []
                content {
                  baseline_model_version = conversation_model_config.value.baseline_model_version
                  model                  = conversation_model_config.value.model
                }
              }
              dynamic "conversation_process_config" {
                for_each = feature_configs.value.conversation_process_config != null ? [feature_configs.value.conversation_process_config] : []
                content {
                  recent_sentences_count = conversation_process_config.value.recent_sentences_count
                }
              }
              disable_agent_query_logging            = feature_configs.value.disable_agent_query_logging
              enable_conversation_augmented_query    = feature_configs.value.enable_conversation_augmented_query
              enable_event_based_suggestion          = feature_configs.value.enable_event_based_suggestion
              enable_query_suggestion_only           = feature_configs.value.enable_query_suggestion_only
              enable_query_suggestion_when_no_answer = feature_configs.value.enable_query_suggestion_when_no_answer
              dynamic "query_config" {
                for_each = feature_configs.value.query_config != null ? [feature_configs.value.query_config] : []
                content {
                  confidence_threshold = query_config.value.confidence_threshold
                  dynamic "context_filter_settings" {
                    for_each = query_config.value.context_filter_settings != null ? [query_config.value.context_filter_settings] : []
                    content {
                      drop_handoff_messages       = context_filter_settings.value.drop_handoff_messages
                      drop_ivr_messages           = context_filter_settings.value.drop_ivr_messages
                      drop_virtual_agent_messages = context_filter_settings.value.drop_virtual_agent_messages
                    }
                  }
                  dynamic "dialogflow_query_source" {
                    for_each = query_config.value.dialogflow_query_source != null ? [query_config.value.dialogflow_query_source] : []
                    content {
                      agent = dialogflow_query_source.value.agent
                      dynamic "human_agent_side_config" {
                        for_each = dialogflow_query_source.value.human_agent_side_config != null ? [dialogflow_query_source.value.human_agent_side_config] : []
                        content {
                          agent = human_agent_side_config.value.agent
                        }
                      }
                    }
                  }
                  max_results = query_config.value.max_results
                  dynamic "sections" {
                    for_each = query_config.value.sections != null ? [query_config.value.sections] : []
                    content {
                      section_types = sections.value.section_types
                    }
                  }
                }
              }
              dynamic "suggestion_feature" {
                for_each = feature_configs.value.suggestion_feature != null ? [feature_configs.value.suggestion_feature] : []
                content {
                  type = suggestion_feature.value.type
                }
              }
              dynamic "suggestion_trigger_settings" {
                for_each = feature_configs.value.suggestion_trigger_settings != null ? [feature_configs.value.suggestion_trigger_settings] : []
                content {
                  no_small_talk = suggestion_trigger_settings.value.no_small_talk
                  only_end_user = suggestion_trigger_settings.value.only_end_user
                }
              }
            }
          }
          generators                 = human_agent_suggestion_config.value.generators
          group_suggestion_responses = human_agent_suggestion_config.value.group_suggestion_responses
        }
      }
      dynamic "message_analysis_config" {
        for_each = human_agent_assistant_config.value.message_analysis_config != null ? [human_agent_assistant_config.value.message_analysis_config] : []
        content {
          enable_entity_extraction  = message_analysis_config.value.enable_entity_extraction
          enable_sentiment_analysis = message_analysis_config.value.enable_sentiment_analysis
        }
      }
      dynamic "notification_config" {
        for_each = human_agent_assistant_config.value.notification_config != null ? [human_agent_assistant_config.value.notification_config] : []
        content {
          message_format = notification_config.value.message_format
          topic          = notification_config.value.topic
        }
      }
    }
  }

  dynamic "human_agent_handoff_config" {
    for_each = each.value.human_agent_handoff_config != null ? [each.value.human_agent_handoff_config] : []
    content {
      dynamic "live_person_config" {
        for_each = human_agent_handoff_config.value.live_person_config != null ? [human_agent_handoff_config.value.live_person_config] : []
        content {
          account_number = live_person_config.value.account_number
        }
      }
    }
  }

  dynamic "logging_config" {
    for_each = each.value.logging_config != null ? [each.value.logging_config] : []
    content {
      enable_stackdriver_logging = logging_config.value.enable_stackdriver_logging
    }
  }

  dynamic "new_message_event_notification_config" {
    for_each = each.value.new_message_event_notification_config != null ? [each.value.new_message_event_notification_config] : []
    content {
      message_format = new_message_event_notification_config.value.message_format
      topic          = new_message_event_notification_config.value.topic
    }
  }

  dynamic "new_recognition_result_notification_config" {
    for_each = each.value.new_recognition_result_notification_config != null ? [each.value.new_recognition_result_notification_config] : []
    content {
      message_format = new_recognition_result_notification_config.value.message_format
      topic          = new_recognition_result_notification_config.value.topic
    }
  }

  dynamic "notification_config" {
    for_each = each.value.notification_config != null ? [each.value.notification_config] : []
    content {
      message_format = notification_config.value.message_format
      topic          = notification_config.value.topic
    }
  }

  dynamic "stt_config" {
    for_each = each.value.stt_config != null ? [each.value.stt_config] : []
    content {
      audio_encoding                = stt_config.value.audio_encoding
      enable_word_info              = stt_config.value.enable_word_info
      language_code                 = stt_config.value.language_code
      model                         = stt_config.value.model
      sample_rate_hertz             = stt_config.value.sample_rate_hertz
      speech_model_variant          = stt_config.value.speech_model_variant
      use_timeout_based_endpointing = stt_config.value.use_timeout_based_endpointing
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }

  dynamic "tts_config" {
    for_each = each.value.tts_config != null ? [each.value.tts_config] : []
    content {
      effects_profile_id = tts_config.value.effects_profile_id
      pitch              = tts_config.value.pitch
      speaking_rate      = tts_config.value.speaking_rate
      dynamic "voice" {
        for_each = tts_config.value.voice != null ? [tts_config.value.voice] : []
        content {
          name        = voice.value.name
          ssml_gender = voice.value.ssml_gender
        }
      }
      volume_gain_db = tts_config.value.volume_gain_db
    }
  }
}

