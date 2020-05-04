resource "oci_core_instance" "TFInstance" {
  availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1].name
  compartment_id = var.compartment_id
  display_name = "TFInstance"
  image = var.InstanceImageOCID[var.region]
  shape = var.InstanceShape
  
  create_vnic_details {
    subnet_id = oci_core_subnet.ExampleSubnet.id
    display_name = "primaryvnic"
    assign_public_ip = true
    hostname_label = "tfexampleinstance"
  }
  
  metadata = {
    ssh_authorized_keys = var.ssh_public_key
  }
  
  timeouts {
    create = "60m"
  }
}

