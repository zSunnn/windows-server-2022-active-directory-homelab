# Read-only validation commands for the Windows Server DHCP configuration.
# Run from an elevated PowerShell session on DC01.

Get-Service -Name DHCPServer
Get-DhcpServerv4Binding
Get-DhcpServerv4Scope
Get-DhcpServerv4Statistics
Get-DhcpServerv4Lease -ScopeId '192.168.10.0'

