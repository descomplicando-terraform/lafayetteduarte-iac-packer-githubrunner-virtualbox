source "virtualbox-ovf" "gh-runner" {
  source_path = "${var.template_Path}/${var.baseimage_name}-${var.baseimage_version}.ovf"
  target_path = "${var.template_Path}/${var.image_name}-${var.image_version}.ovf"
  output_directory = "${var.template_Path}"
  vm_name          = "gh-runner-v${var.image_version}"
  ssh_username = var.user
  ssh_password = "packer"
  shutdown_command = "echo 'packer' | sudo -S shutdown -P now"
}