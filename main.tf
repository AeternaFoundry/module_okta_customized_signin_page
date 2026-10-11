resource "okta_customized_signin_page" "customized_signin_pages" {
  for_each = var.customized_signin_pages

  brand_id       = each.value.brand_id
  page_content   = each.value.page_content
  widget_version = each.value.widget_version

  dynamic "content_security_policy_setting" {
    for_each = each.value.content_security_policy_setting != null ? each.value.content_security_policy_setting : []
    content {
      mode       = content_security_policy_setting.value.mode
      report_uri = content_security_policy_setting.value.report_uri
      src_list   = content_security_policy_setting.value.src_list
    }
  }

  dynamic "widget_customizations" {
    for_each = each.value.widget_customizations != null ? each.value.widget_customizations : []
    content {
      authenticator_page_custom_link_label          = widget_customizations.value.authenticator_page_custom_link_label
      authenticator_page_custom_link_url            = widget_customizations.value.authenticator_page_custom_link_url
      classic_recovery_flow_email_or_username_label = widget_customizations.value.classic_recovery_flow_email_or_username_label
      custom_link_1_label                           = widget_customizations.value.custom_link_1_label
      custom_link_1_url                             = widget_customizations.value.custom_link_1_url
      custom_link_2_label                           = widget_customizations.value.custom_link_2_label
      custom_link_2_url                             = widget_customizations.value.custom_link_2_url
      forgot_password_label                         = widget_customizations.value.forgot_password_label
      forgot_password_url                           = widget_customizations.value.forgot_password_url
      help_label                                    = widget_customizations.value.help_label
      help_url                                      = widget_customizations.value.help_url
      password_info_tip                             = widget_customizations.value.password_info_tip
      password_label                                = widget_customizations.value.password_label
      show_password_visibility_toggle               = widget_customizations.value.show_password_visibility_toggle
      show_user_identifier                          = widget_customizations.value.show_user_identifier
      sign_in_label                                 = widget_customizations.value.sign_in_label
      unlock_account_label                          = widget_customizations.value.unlock_account_label
      unlock_account_url                            = widget_customizations.value.unlock_account_url
      username_info_tip                             = widget_customizations.value.username_info_tip
      username_label                                = widget_customizations.value.username_label
      widget_generation                             = widget_customizations.value.widget_generation
    }
  }
}

