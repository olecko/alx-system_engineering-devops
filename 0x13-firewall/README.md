# Firewall

* A firewall is a network security system that monitors and controls incoming and outgoing network traffic based on predetermined security rules. A firewall typically establishes a barrier between a trusted network and an untrusted network, such as the Internet

* Firewalls are categorized as a network-based or a host-based system. Network-based firewalls are positioned between two or more networks, typically between the local area network (LAN) and wide area network (WAN), their basic function is to control the flow of data between connected networks. On the other hand, Host-based firewalls are deployed directly on the host itself to control network traffic or other computing resources.

## Tasks

0. **Block all incoming traffic but**

Let’s install the `ufw` firewall and setup a few rules on `web-01`.

###### Requirements:

The requirements below must be applied to `web-01` (feel free to do it on `lb-01` and `web-02`, but it won’t be checked)
Configure `ufw` so that it blocks all incoming traffic, except the following TCP ports:

	- `22` (SSH)
	- `443` (HTTPS SSL)
	- `80` (HTTP)
Share the `ufw` commands that you used in your answer file

1. **Port forwarding**

Firewalls can not only filter requests, they can also forward them.

###### Requirements:

Configure `web-01` so that its firewall redirects port `8080/TCP` to port `80/TCP`.
Your answer file should be a copy of the `ufw` configuration file that you modified to make this happen
