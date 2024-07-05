output "proxmox_vm_qemu" {
  description = "List of Proxmox VMs created"
  value       = proxmox_vm_qemu.proxmox_vm_qemu[*].vmid
}
