# Proxmox variables
variable "proxmox_vm_qemu" {
  description = "List of maps containing Proxmox VM configuration"
  type = list(object({
    name              = string
    target_node       = string
    os_type           = string
    cores             = number
    sockets           = number
    memory            = number
    scsihw            = string
    bootdisk          = string
    network_model     = string
    network_bridge    = string
    network_firewall  = bool
    network_link_down = bool
    network_tag       = number
    disk_size         = string
    disk_storage      = string
    iso_file          = string
  }))
}
