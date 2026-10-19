# DNS and DHCP

## DNS

DC01 hosts DNS for `LamHomeLab.local`. Domain clients use `192.168.10.10` as their DNS server so that domain service records and hostnames resolve through the domain controller.

Validation commands:

```powershell
nslookup dc01
nslookup client01
ping dc01
ping client01
```

The command output was checked on the client but was not captured as a screenshot. The screenshots below show the zones and the records they contain.

![DNS forward lookup zone](../screenshots/02-dns-domain-join/01-dns-forward-lookup-zones.png)

![DNS records in the LamHomeLab.local zone](../screenshots/02-dns-domain-join/03-dns-dc01-records.png)

## DHCP

| Setting | Value |
|---|---|
| Server | DC01 |
| Network | `192.168.10.0/24` |
| Scope | `192.168.10.100`–`192.168.10.200` |
| DNS option | `192.168.10.10` |
| Successful client lease | `192.168.10.100` |

The DHCP service is authorised and bound to the `LAN-Domain` adapter. VMware DHCP is disabled on VMnet1.

![DHCP console after installing the role](../screenshots/08-dhcp-networking/01-dhcp-manager-installed.png)

![DHCP scope](../screenshots/08-dhcp-networking/02-dhcp-scope-created.png)

![DHCP binding](../screenshots/08-dhcp-networking/03-dhcp-binding-lan-domain.png)

The scope options screenshot below was captured as shown: option 006 lists `192.168.10.10` followed by further addresses (including `192.168.7.132`), and option 015 is `LamHomeLab.local`.

![DHCP scope options](../screenshots/08-dhcp-networking/04-dhcp-scope-options.png)

![Successful client lease](../screenshots/08-dhcp-networking/05-dhcp-lease-success-client01.png)
