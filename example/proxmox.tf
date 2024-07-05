module "proxmox_vm_qemu" {
  source = "../modules"

  proxmox_vm_qemu = [
    for proxmox_vm_qemu in var.proxmox_vm_qemu :
    {
      name              = proxmox_vm_qemu.name
      target_node       = proxmox_vm_qemu.target_node
      os_type           = proxmox_vm_qemu.os_type
      cores             = proxmox_vm_qemu.cores
      sockets           = proxmox_vm_qemu.sockets
      memory            = proxmox_vm_qemu.memory
      scsihw            = proxmox_vm_qemu.scsihw
      bootdisk          = proxmox_vm_qemu.bootdisk
      network_model     = proxmox_vm_qemu.network_model
      network_bridge    = proxmox_vm_qemu.network_bridge
      network_firewall  = proxmox_vm_qemu.network_firewall
      network_link_down = proxmox_vm_qemu.network_link_down
      network_tag       = proxmox_vm_qemu.network_tag
      disk_size         = proxmox_vm_qemu.disk_size
      disk_storage      = proxmox_vm_qemu.disk_storage
      iso_file          = proxmox_vm_qemu.iso_file
    }
  ]
}