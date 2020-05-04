provider "oci" {}
variable "compartment_id" {
	default = "ocid1.compartment.oc1..aaaaaaaabi76e7szr5bi7x4iaetmxkjbj5vgzljoad2h6brophlz2b4aut5a"
}
variable "namespace" {
	default = "axdvjzox0ixb"
}
variable "tenancy_id" {
	default = "ocid1.tenancy.oc1..aaaaaaaayn6s77e3y4hgz56uzwvay3jrpekafo6ycr5pr5xdsg3gahcygx7a"
}
variable "region" {
	default = "ap-mumbai-1"
}
variable "ssh_public_key" {}
variable "ssh_private_key" {}
# Choose an Availability Domain
variable "AD" {
    default = "1"
}
variable "InstanceShape" {
    default = "VM.Standard2.1"
}
variable "InstanceImageOCID" {
    type = map(string)
    default = {
        "ap-mumbai-1" = "ocid1.image.oc1.ap-mumbai-1.aaaaaaaarrsp6bazleeeghz6jcifatswozlqkoffzwxzbt2ilj2f65ngqi6a"
	}
}
variable "DBSize" {
    default = "50" // size in GBs
}
variable "BootStrapFile" {
    default = "./userdata/bootstrap"
}
