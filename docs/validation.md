# Validation and Evidence Index

| Requirement | Evidence | Status |
|---|---|---|
| AD structure and departmental objects | [`01-active-directory`](../screenshots/01-active-directory/) | Verified |
| DNS zone | [`01-dns-forward-lookup-zones.png`](../screenshots/02-dns-domain-join/01-dns-forward-lookup-zones.png) | Verified |
| Domain-join workflow | [`02-client-domain-join-dialog.png`](../screenshots/02-dns-domain-join/02-client-domain-join-dialog.png) | Evidence captured |
| DNS/hostname connectivity | [`03-client-dns-ping-validation.png`](../screenshots/02-dns-domain-join/03-client-dns-ping-validation.png) | Verified |
| Finance share and permissions | [`03-file-server`](../screenshots/03-file-server/) | Verified |
| Finance drive mapped to F | [`03-finance-drive-mapped-f.png`](../screenshots/04-gpo-drive-mapping/03-finance-drive-mapped-f.png) | Verified |
| Control Panel restriction | [`05-control-panel-blocked-validation.png`](../screenshots/05-gpo-control-panel/05-control-panel-blocked-validation.png) | Verified |
| Account lockout and recovery | [`06-account-security`](../screenshots/06-account-security/) | Verified |
| 7-Zip deployment | [`01-7zip-installed-validation.png`](../screenshots/07-software-deployment/01-7zip-installed-validation.png) | Verified |
| DHCP scope and binding | [`08-dhcp-networking`](../screenshots/08-dhcp-networking/) | Verified |
| Successful DHCP lease | [`05-dhcp-lease-success-client01.png`](../screenshots/08-dhcp-networking/05-dhcp-lease-success-client01.png) | Verified |
| APIPA/no-Discover incident | [`09-troubleshooting`](../screenshots/09-troubleshooting/) | Documented |

## Evidence limitations

- A USB restriction GPO is excluded because completion was not fully validated.
- Names for HR, Marketing, and Sales user accounts are omitted until rechecked in ADUC.
- The domain-join screenshot demonstrates the workflow; the AD/DNS and client validation evidence collectively supports the completed domain configuration.

