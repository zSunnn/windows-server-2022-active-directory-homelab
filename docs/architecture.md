# Architecture

## Final topology

The final environment uses VMware VMnet1 as an isolated host-only network named `LAN-Domain`. Both virtual machines have one network adapter. NAT adapters used temporarily to obtain installation media were removed.

| Setting | DC01 | CLIENT01 |
|---|---|---|
| Adapter | LAN-Domain / VMnet1 | LAN-Domain / VMnet1 |
| Addressing | Static | DHCP |
| IPv4 address | `192.168.10.10` | `192.168.10.100` |
| Subnet mask | `255.255.255.0` | `255.255.255.0` |
| Default gateway | `192.168.10.1` | `192.168.10.1` |
| DNS | `127.0.0.1` | `192.168.10.10` |

The DC hosts AD DS, DNS, DHCP, and file services. `CLIENT01` is joined to `LamHomeLab.local` and receives its network configuration from DC01.

![Final VMnet1 host-only network](../screenshots/08-dhcp-networking/06-vmnet1-host-only-final.png)

## Design decisions

- One Layer 2 segment keeps domain DNS and DHCP behaviour predictable.
- The domain controller uses a static address.
- The client uses the Windows Server DHCP service.
- VMware DHCP is disabled on the lab segment.
- No secondary NAT NIC remains in the final design.

The gateway is retained in the documented configuration, although external routing is not a core requirement of the isolated lab.

