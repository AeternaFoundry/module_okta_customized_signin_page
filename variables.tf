variable "customized_signin_pages" {
  description = <<EOT
Map of customized_signin_pages, attributes below
Required:
    - brand_id
Optional:
    - page_content
    - widget_version
    - content_security_policy_setting (block):
        - mode (optional)
        - report_uri (optional)
        - src_list (optional)
    - widget_customizations (block):
        - authenticator_page_custom_link_label (optional)
        - authenticator_page_custom_link_url (optional)
        - classic_recovery_flow_email_or_username_label (optional)
        - custom_link_1_label (optional)
        - custom_link_1_url (optional)
        - custom_link_2_label (optional)
        - custom_link_2_url (optional)
        - forgot_password_label (optional)
        - forgot_password_url (optional)
        - help_label (optional)
        - help_url (optional)
        - password_info_tip (optional)
        - password_label (optional)
        - show_password_visibility_toggle (optional)
        - show_user_identifier (optional)
        - sign_in_label (optional)
        - unlock_account_label (optional)
        - unlock_account_url (optional)
        - username_info_tip (optional)
        - username_label (optional)
        - widget_generation (required)
EOT

  type = map(object({
    brand_id       = string
    page_content   = optional(string)
    widget_version = optional(string)
    content_security_policy_setting = optional(list(object({
      mode       = optional(string)
      report_uri = optional(string)
      src_list   = optional(list(string))
    })))
    widget_customizations = optional(list(object({
      authenticator_page_custom_link_label          = optional(string)
      authenticator_page_custom_link_url            = optional(string)
      classic_recovery_flow_email_or_username_label = optional(string)
      custom_link_1_label                           = optional(string)
      custom_link_1_url                             = optional(string)
      custom_link_2_label                           = optional(string)
      custom_link_2_url                             = optional(string)
      forgot_password_label                         = optional(string)
      forgot_password_url                           = optional(string)
      help_label                                    = optional(string)
      help_url                                      = optional(string)
      password_info_tip                             = optional(string)
      password_label                                = optional(string)
      show_password_visibility_toggle               = optional(bool)
      show_user_identifier                          = optional(bool)
      sign_in_label                                 = optional(string)
      unlock_account_label                          = optional(string)
      unlock_account_url                            = optional(string)
      username_info_tip                             = optional(string)
      username_label                                = optional(string)
      widget_generation                             = string
    })))
  }))
}

