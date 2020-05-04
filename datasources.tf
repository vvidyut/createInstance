# Gets a list of Availability Domains
data "oci_identity_availability_domains" "ADs" {
    compartment_id = var.tenancy_id
}
  
# Gets a list of vNIC attachments on the instance
data "oci_core_vnic_attachments" "InstanceVnics" {
    compartment_id = var.compartment_id
    availability_domain = data.oci_identity_availability_domains.ADs.availability_domains[var.AD - 1].name
    instance_id = oci_core_instance.TFInstance.id
}
  
# Gets the OCID of the first (default) vNIC
data "oci_core_vnic" "InstanceVnic" {
    vnic_id = data.oci_core_vnic_attachments.InstanceVnics.vnic_attachments[0].vnic_id
}
