variable "template_Path" {
  type = string
  default = env("BASE_IMAGE_PATH") != "" ? env("BASE_IMAGE_PATH") : "../images"
}

variable "baseimage_name"{
    type = string
    default = "baseOS"
}

variable "baseimage_version"{
    type = string
    default = env("BASE_IMAGE_VERSION") != "" ? env("BASE_IMAGE_VERSION")  : "v1"
}

variable "image_name"{
    type = string
    default = "gh-runner"
}

variable "image_version"{
    type = string
    description = ""
    default = env("IMAGE_VERSION") != "" ? env("IMAGE_VERSION")  : "v1"
}

variable "user" {
  type        = string
  description = "Usuário default"
  default     = "packer"
}

variable "template_name" {
  type        = string
  description = "nome do template"
  default     = "gh-runner"
}