variable "dialogflow_conversation_profiles" {
  description = <<EOT
Map of dialogflow_conversation_profiles, attributes below
Required:
    - display_name
    - location
Optional:
    - deletion_policy
    - language_code
    - project
    - security_settings
    - time_zone
    - automated_agent_config (block):
        - agent (required)
        - session_ttl (optional)
    - human_agent_assistant_config (block):
        - end_user_suggestion_config (optional, block):
            - disable_high_latency_features_sync_delivery (optional)
            - feature_configs (optional, block):
                - conversation_model_config (optional, block):
                    - baseline_model_version (optional)
                    - model (optional)
                - conversation_process_config (optional, block):
                    - recent_sentences_count (optional)
                - disable_agent_query_logging (optional)
                - enable_conversation_augmented_query (optional)
                - enable_event_based_suggestion (optional)
                - enable_query_suggestion_only (optional)
                - enable_query_suggestion_when_no_answer (optional)
                - query_config (optional, block):
                    - confidence_threshold (optional)
                    - context_filter_settings (optional, block):
                        - drop_handoff_messages (optional)
                        - drop_ivr_messages (optional)
                        - drop_virtual_agent_messages (optional)
                    - dialogflow_query_source (optional, block):
                        - agent (required)
                        - human_agent_side_config (optional, block):
                            - agent (optional)
                    - document_query_source (optional, block):
                        - documents (required)
                    - knowledge_base_query_source (optional, block):
                        - knowledge_bases (required)
                    - max_results (optional)
                    - sections (optional, block):
                        - section_types (optional)
                - suggestion_feature (optional, block):
                    - type (optional)
                - suggestion_trigger_settings (optional, block):
                    - no_small_talk (optional)
                    - only_end_user (optional)
            - generators (optional)
            - group_suggestion_responses (optional)
        - human_agent_suggestion_config (optional, block):
            - disable_high_latency_features_sync_delivery (optional)
            - feature_configs (optional, block):
                - conversation_model_config (optional, block):
                    - baseline_model_version (optional)
                    - model (optional)
                - conversation_process_config (optional, block):
                    - recent_sentences_count (optional)
                - disable_agent_query_logging (optional)
                - enable_conversation_augmented_query (optional)
                - enable_event_based_suggestion (optional)
                - enable_query_suggestion_only (optional)
                - enable_query_suggestion_when_no_answer (optional)
                - query_config (optional, block):
                    - confidence_threshold (optional)
                    - context_filter_settings (optional, block):
                        - drop_handoff_messages (optional)
                        - drop_ivr_messages (optional)
                        - drop_virtual_agent_messages (optional)
                    - dialogflow_query_source (optional, block):
                        - agent (required)
                        - human_agent_side_config (optional, block):
                            - agent (optional)
                    - max_results (optional)
                    - sections (optional, block):
                        - section_types (optional)
                - suggestion_feature (optional, block):
                    - type (optional)
                - suggestion_trigger_settings (optional, block):
                    - no_small_talk (optional)
                    - only_end_user (optional)
            - generators (optional)
            - group_suggestion_responses (optional)
        - message_analysis_config (optional, block):
            - enable_entity_extraction (optional)
            - enable_sentiment_analysis (optional)
        - notification_config (optional, block):
            - message_format (optional)
            - topic (optional)
    - human_agent_handoff_config (block):
        - live_person_config (optional, block):
            - account_number (required)
    - logging_config (block):
        - enable_stackdriver_logging (optional)
    - new_message_event_notification_config (block):
        - message_format (optional)
        - topic (optional)
    - new_recognition_result_notification_config (block):
        - message_format (optional)
        - topic (optional)
    - notification_config (block):
        - message_format (optional)
        - topic (optional)
    - stt_config (block):
        - audio_encoding (optional)
        - enable_word_info (optional)
        - language_code (optional)
        - model (optional)
        - sample_rate_hertz (optional)
        - speech_model_variant (optional)
        - use_timeout_based_endpointing (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
    - tts_config (block):
        - effects_profile_id (optional)
        - pitch (optional)
        - speaking_rate (optional)
        - voice (optional, block):
            - name (optional)
            - ssml_gender (optional)
        - volume_gain_db (optional)
EOT

  type = map(object({
    display_name      = string
    location          = string
    deletion_policy   = optional(string)
    language_code     = optional(string)
    project           = optional(string)
    security_settings = optional(string)
    time_zone         = optional(string)
    automated_agent_config = optional(object({
      agent       = string
      session_ttl = optional(string)
    }))
    human_agent_assistant_config = optional(object({
      end_user_suggestion_config = optional(object({
        disable_high_latency_features_sync_delivery = optional(bool)
        feature_configs = optional(list(object({
          conversation_model_config = optional(object({
            baseline_model_version = optional(string)
            model                  = optional(string)
          }))
          conversation_process_config = optional(object({
            recent_sentences_count = optional(number)
          }))
          disable_agent_query_logging            = optional(bool)
          enable_conversation_augmented_query    = optional(bool)
          enable_event_based_suggestion          = optional(bool)
          enable_query_suggestion_only           = optional(bool)
          enable_query_suggestion_when_no_answer = optional(bool)
          query_config = optional(object({
            confidence_threshold = optional(number)
            context_filter_settings = optional(object({
              drop_handoff_messages       = optional(bool)
              drop_ivr_messages           = optional(bool)
              drop_virtual_agent_messages = optional(bool)
            }))
            dialogflow_query_source = optional(object({
              agent = string
              human_agent_side_config = optional(object({
                agent = optional(string)
              }))
            }))
            document_query_source = optional(object({
              documents = list(string)
            }))
            knowledge_base_query_source = optional(object({
              knowledge_bases = list(string)
            }))
            max_results = optional(number)
            sections = optional(object({
              section_types = optional(list(string))
            }))
          }))
          suggestion_feature = optional(object({
            type = optional(string)
          }))
          suggestion_trigger_settings = optional(object({
            no_small_talk = optional(bool)
            only_end_user = optional(bool)
          }))
        })))
        generators                 = optional(list(string))
        group_suggestion_responses = optional(bool)
      }))
      human_agent_suggestion_config = optional(object({
        disable_high_latency_features_sync_delivery = optional(bool)
        feature_configs = optional(list(object({
          conversation_model_config = optional(object({
            baseline_model_version = optional(string)
            model                  = optional(string)
          }))
          conversation_process_config = optional(object({
            recent_sentences_count = optional(number)
          }))
          disable_agent_query_logging            = optional(bool)
          enable_conversation_augmented_query    = optional(bool)
          enable_event_based_suggestion          = optional(bool)
          enable_query_suggestion_only           = optional(bool)
          enable_query_suggestion_when_no_answer = optional(bool)
          query_config = optional(object({
            confidence_threshold = optional(number)
            context_filter_settings = optional(object({
              drop_handoff_messages       = optional(bool)
              drop_ivr_messages           = optional(bool)
              drop_virtual_agent_messages = optional(bool)
            }))
            dialogflow_query_source = optional(object({
              agent = string
              human_agent_side_config = optional(object({
                agent = optional(string)
              }))
            }))
            max_results = optional(number)
            sections = optional(object({
              section_types = optional(list(string))
            }))
          }))
          suggestion_feature = optional(object({
            type = optional(string)
          }))
          suggestion_trigger_settings = optional(object({
            no_small_talk = optional(bool)
            only_end_user = optional(bool)
          }))
        })))
        generators                 = optional(list(string))
        group_suggestion_responses = optional(bool)
      }))
      message_analysis_config = optional(object({
        enable_entity_extraction  = optional(bool)
        enable_sentiment_analysis = optional(bool)
      }))
      notification_config = optional(object({
        message_format = optional(string)
        topic          = optional(string)
      }))
    }))
    human_agent_handoff_config = optional(object({
      live_person_config = optional(object({
        account_number = string
      }))
    }))
    logging_config = optional(object({
      enable_stackdriver_logging = optional(bool)
    }))
    new_message_event_notification_config = optional(object({
      message_format = optional(string)
      topic          = optional(string)
    }))
    new_recognition_result_notification_config = optional(object({
      message_format = optional(string)
      topic          = optional(string)
    }))
    notification_config = optional(object({
      message_format = optional(string)
      topic          = optional(string)
    }))
    stt_config = optional(object({
      audio_encoding                = optional(string)
      enable_word_info              = optional(bool)
      language_code                 = optional(string)
      model                         = optional(string)
      sample_rate_hertz             = optional(number)
      speech_model_variant          = optional(string)
      use_timeout_based_endpointing = optional(bool)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
    tts_config = optional(object({
      effects_profile_id = optional(list(string))
      pitch              = optional(number)
      speaking_rate      = optional(number)
      voice = optional(object({
        name        = optional(string)
        ssml_gender = optional(string)
      }))
      volume_gain_db = optional(number)
    }))
  }))
  # Note: 9 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

