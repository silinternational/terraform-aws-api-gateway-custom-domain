
variable "api_name" {
  description = "The API Gateway API name, for associating with this custom domain"
  type        = string
}

variable "aws_region" {
  default = "us-east-2"
}

variable "certificate_subdomain" {
  description = "The subdomain for the API Gateway custom domain. Will be combined with the Cloudflare zone (aka domain)."
  type        = string
}

variable "cloudflare_token" {
  description = "The Cloudflare limited access API token"
  type        = string
}

variable "cloudflare_zone_name" {
  description = "The Cloudflare zone (aka domain) name for the DNS record for certificate validation."
  type        = string
}

variable "create_dns_validation" {
  description = "Whether to create the DNS record for certificate validation"
  type        = bool
  default     = true
}

variable "stage" {
  description = "The stage of the API to map this domain name to (e.g. 'dev' or 'prod')"
  type        = string
}
