# resource "checkpoint_management_network" "example2" {
#   name = "IPv6_Link_Local_Hosts"
#   subnet4 = "192.0.2.0"
#   mask_length4 = 32
# }


data "checkpoint_management_data_network" "example2" {
    name = "IPv6_Link_Local_Hosts"
}

output "ipv6_color" {
  value = data.checkpoint_management_data_network.example2.color
}

output "ipv6_full" {
  value = jsonencode(data.checkpoint_management_data_network.example2)
}

resource "checkpoint_management_host" "homer" {
    color        = "lemon chiffon"
    comments     = null
    #id           = "homer"
    ipv4_address = "10.20.10.11"
    name         = "homer"
    nat_settings = {}
    tags         = ["mmm"]

 
}