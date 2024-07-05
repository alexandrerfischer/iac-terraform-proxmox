# Proxmox VM QEMU

Creates Proxmox virtual machines using QEMU.

These resources can include:

- VMs with specified configurations

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

Auto-generated technical documentation is created using [`Terraform-Docs-Proxmox`](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs)

## Examples

```hcl
# See examples under the top level examples directory for more information on how to use this module.
```

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13 |
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | >= 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc3 |

## Modules

```hcl
# Modules created for this repository are available in the modules directory.
```

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.proxmox_vm_qemu](https://registry.terraform.io/providers/Telmate/proxmox/latest/docs/resources/vm_qemu) | resource |

## Inputs - Proxmox VM QEMU

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | The name of the VM | `string` | `n/a` | yes |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | The target Proxmox node where the VM will be created | `string` | `n/a` | yes |
| <a name="input_os_type"></a> [os\_type](#input\_os\_type) | The OS type for the VM | `string` | `n/a` | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | The number of CPU cores for the VM | `number` | `n/a` | yes |
| <a name="input_sockets"></a> [sockets](#input\_sockets) | The number of CPU sockets for the VM | `number` | `n/a` | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of memory (in MB) for the VM | `number` | `n/a` | yes |
| <a name="input_scsihw"></a> [scsihw](#input\_scsihw) | The SCSI hardware type for the VM | `string` | `n/a` | yes |
| <a name="input_bootdisk"></a> [bootdisk](#input\_bootdisk) | The boot disk for the VM | `string` | `n/a` | yes |
| <a name="input_network_model"></a> [network\_model](#input\_network\_model) | The network model for the VM | `string` | `n/a` | yes |
| <a name="input_network_bridge"></a> [network\_bridge](#input\_network\_bridge) | The network bridge for the VM | `string` | `n/a` | yes |
| <a name="input_network_firewall"></a> [network\_firewall](#input\_network\_firewall) | Whether to enable the firewall for the VM | `bool` | `false` | no |
| <a name="input_network_link_down"></a> [network\_link\_down](#input\_network\_link\_down) | Whether to bring the network link down for the VM | `bool` | `false` | no |
| <a name="input_network_tag"></a> [network\_tag](#input\_network\_tag) | The network tag for the VM | `number` | `0` | no |
| <a name="input_disk_size"></a> [disk\_size](#input\_disk\_size) | The size of the VM's disk | `string` | `n/a` | yes |
| <a name="input_disk_storage"></a> [disk\_storage](#input\_disk\_storage) | The storage location for the VM's disk | `string` | `n/a` | yes |
| <a name="input_iso_file"></a> [iso\_file](#input\_iso\_file) | The ISO file to use for the VM's installation | `string` | `n/a` | yes |


## Outputs

| Name | Description |
|------|-------------|
| <a name="output_proxmox_vm_qemu"></a> [proxmox\_vm\_qemu\_id](#output\_proxmox\_vm\_qemu\_id) | List of Proxmox VMs created |


<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->