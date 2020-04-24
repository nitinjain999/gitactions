resource "docker_network" "public_bridge_network" {
  name   = "public_ghost_network"
  driver = "bridge"
}

resource "docker_network" "private_bridge_network" {
  name     = "ghost_mysql_internal"
  driver   = "bridge"
  internal = true
}

/*
name - (Required, string) The name of the Docker network.

labels - (Optional, block) See Labels below for details.

check_duplicate - (Optional, boolean) Requests daemon to check for networks with same name.

driver - (Optional, string) Name of the network driver to use. Defaults to bridge driver.

options - (Optional, map of strings) Network specific options to be used by the drivers.

internal - (Optional, boolean) Restrict external access to the network. Defaults to false.

attachable - (Optional, boolean) Enable manual container attachment to the network. Defaults to false.

ingress - (Optional, boolean) Create swarm routing-mesh network. Defaults to false.

ipv6 - (Optional, boolean) Enable IPv6 networking. Defaults to false.

ipam_driver - (Optional, string) Driver used by the custom IP scheme of the network.

ipam_config - (Optional, block) See IPAM config below for details.

*/

