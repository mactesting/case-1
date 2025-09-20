variable "name" { 
    type = string  
    default = "scalable-webapp" 
}
variable "region" { 
    type = string  
    default = "us-east-1" 
}
variable "vpc_cidr" { 
    type = string  
    default = "10.0.0.0/16" 
}
variable "azs" { 
    type = list(string) 
    default = ["us-east-1a","us-east-1b"] 
}

variable "instance_type" { 
    type = string  
    default = "t3.micro" 
}
variable "root_volume_size" { 
    type = number  
    default = 30 
}
variable "data_volume_size" { 
    type = number  
    default = 10 
}

variable "asg_min" { 
    type = number  
    default = 1
}
variable "asg_desired" { 
    type = number  
    default = 1 
}
variable "asg_max" { 
    type = number  
    default = 4 
}
variable "cpu_target_percent" { 
    type = number  
    default = 50 
}

# Restrict SSH—replace with your IP/CIDR
variable "allowed_ssh_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

# Route53
# Provide an existing Hosted Zone ID (public) and your desired record (e.g., app.example.com)
# variable "route53_zone_id"   { type = string }
# variable "app_domain_name"   { type = string }
