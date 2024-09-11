source "virtualbox-ovf" "gh-runner" {
  source_path = "${var.template_Path}/${var.baseimage_name}/${var.baseimage_version}/${var.baseimage_name}-${var.baseimage_version}.ovf"
  output_directory = "${var.template_Path}/${var.template_name}/${var.image_version}/"
  vm_name          = "${var.template_name}-v${var.image_version}"
  ssh_username = var.user
  ssh_password = "packer"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
}