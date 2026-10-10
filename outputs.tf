output "elb_attachments_id" {
  description = "Map of id values across all elb_attachments, keyed the same as var.elb_attachments"
  value       = { for k, v in aws_elb_attachment.elb_attachments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "elb_attachments_elb" {
  description = "Map of elb values across all elb_attachments, keyed the same as var.elb_attachments"
  value       = { for k, v in aws_elb_attachment.elb_attachments : k => v.elb if v.elb != null && length(v.elb) > 0 }
}
output "elb_attachments_instance" {
  description = "Map of instance values across all elb_attachments, keyed the same as var.elb_attachments"
  value       = { for k, v in aws_elb_attachment.elb_attachments : k => v.instance if v.instance != null && length(v.instance) > 0 }
}
output "elb_attachments_region" {
  description = "Map of region values across all elb_attachments, keyed the same as var.elb_attachments"
  value       = { for k, v in aws_elb_attachment.elb_attachments : k => v.region if v.region != null && length(v.region) > 0 }
}

