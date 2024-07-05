resource "proxmox_vm_qemu" "proxmox_vm_qemu" {
  count = var.proxmox_vm_qemu != null ? length(var.proxmox_vm_qemu) : 0

  name        = var.proxmox_vm_qemu[count.index].name
  target_node = var.proxmox_vm_qemu[count.index].target_node

  os_type  = var.proxmox_vm_qemu[count.index].os_type
  cores    = var.proxmox_vm_qemu[count.index].cores
  sockets  = var.proxmox_vm_qemu[count.index].sockets
  memory   = var.proxmox_vm_qemu[count.index].memory
  scsihw   = var.proxmox_vm_qemu[count.index].scsihw
  bootdisk = var.proxmox_vm_qemu[count.index].bootdisk

  network {
    model     = var.proxmox_vm_qemu[count.index].network_model
    bridge    = var.proxmox_vm_qemu[count.index].network_bridge
    firewall  = var.proxmox_vm_qemu[count.index].network_firewall
    link_down = var.proxmox_vm_qemu[count.index].network_link_down
    tag       = var.proxmox_vm_qemu[count.index].network_tag
  }

  disks {
    scsi {
      scsi0 {
        disk {
          size    = var.proxmox_vm_qemu[count.index].disk_size
          storage = var.proxmox_vm_qemu[count.index].disk_storage
        }
      }
      scsi1 {
        cdrom {
          iso = var.proxmox_vm_qemu[count.index].iso_file
        }
      }
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}
