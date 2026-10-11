output "customized_signin_pages_id" {
  description = "Map of id values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no id are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "customized_signin_pages_brand_id" {
  description = "Map of brand_id values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no brand_id are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.brand_id if v.brand_id != null && length(v.brand_id) > 0 }
}
output "customized_signin_pages_content_security_policy_setting" {
  description = "Map of content_security_policy_setting values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no content_security_policy_setting are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.content_security_policy_setting if v.content_security_policy_setting != null && length(v.content_security_policy_setting) > 0 }
}
output "customized_signin_pages_page_content" {
  description = "Map of page_content values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no page_content are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.page_content if v.page_content != null && length(v.page_content) > 0 }
}
output "customized_signin_pages_widget_customizations" {
  description = "Map of widget_customizations values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no widget_customizations are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.widget_customizations if v.widget_customizations != null && length(v.widget_customizations) > 0 }
}
output "customized_signin_pages_widget_version" {
  description = "Map of widget_version values across all customized_signin_pages, keyed the same as var.customized_signin_pages except keys with no widget_version are omitted"
  value       = { for k, v in okta_customized_signin_page.customized_signin_pages : k => v.widget_version if v.widget_version != null && length(v.widget_version) > 0 }
}

