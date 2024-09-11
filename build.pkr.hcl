build {
  sources = ["source.virtualbox-ovf.gh-runner"]
  provisioner "ansible" {
    galaxy_file          = "./ansible/requirements.yml"
    galaxy_force_install = true

    playbook_file    = "./ansible/playbook.yml"
    ansible_env_vars = [
      "ANSIBLE_REMOTE_TMP=/tmp/.ansible/tmp",
      "ANSIBLE_CONFIG=ansible/ansible.cfg",
    ]
    roles_path       = "./ansible/roles"
    user = var.user

    #extra_arguments = ["-vvvv"]
  }

}