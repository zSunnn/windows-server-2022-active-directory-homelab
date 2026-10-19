# Validation and Evidence Index

| Requirement | Screenshot evidence | Status |
|---|---|---|
| AD structure and departmental objects | [`01-ou-structure-hr-users.png`](../screenshots/01-active-directory/01-ou-structure-hr-users.png), [`03-restricted-group-members.png`](../screenshots/05-gpo-control-panel/03-restricted-group-members.png) | Verified |
| DNS zone and DC record | [`01-dns-forward-lookup-zones.png`](../screenshots/02-dns-domain-join/01-dns-forward-lookup-zones.png), [`03-dns-dc01-records.png`](../screenshots/02-dns-domain-join/03-dns-dc01-records.png) | Verified |
| Domain-join workflow | [`02-client-domain-join-dialog.png`](../screenshots/02-dns-domain-join/02-client-domain-join-dialog.png) | Evidence captured |
| DNS/hostname connectivity (`nslookup`, `ping`) | None | Performed; output not captured |
| Finance share and share-level permissions | [`01-companyshares-folder-structure.png`](../screenshots/03-file-server/01-companyshares-folder-structure.png), [`02-finance-share-permissions.png`](../screenshots/03-file-server/02-finance-share-permissions.png) | Verified |
| Finance NTFS permissions | [`ntfs-select-finance-users.png`](../screenshots/extras/ntfs-select-finance-users.png), [`ntfs-inheritance-error.png`](../screenshots/extras/ntfs-inheritance-error.png) (low resolution) | Partial; final ACL list not captured |
| Finance allowed / IT denied | None | Performed; results not captured |
| Finance drive mapped to F | [`01-item-level-targeting-finance-users.png`](../screenshots/04-gpo-drive-mapping/01-item-level-targeting-finance-users.png), [`04-gpresult-before-read-fix.png`](../screenshots/05-gpo-control-panel/04-gpresult-before-read-fix.png) | Partial; `F:` in Explorer not captured |
| Control Panel restriction | [`01-control-panel-policy-enabled.png`](../screenshots/05-gpo-control-panel/01-control-panel-policy-enabled.png), [`02-security-filtering-policy-group.png`](../screenshots/05-gpo-control-panel/02-security-filtering-policy-group.png), [`05-control-panel-blocked-validation.png`](../screenshots/05-gpo-control-panel/05-control-panel-blocked-validation.png) | Verified |
| Account lockout and recovery | [`01-account-locked-message.png`](../screenshots/06-account-security/01-account-locked-message.png), [`02-aduc-reset-password-unlock.png`](../screenshots/06-account-security/02-aduc-reset-password-unlock.png), [`03-powershell-search-adaccount.png`](../screenshots/06-account-security/03-powershell-search-adaccount.png) | Verified; lockout policy values and `Unlock-ADAccount` output not captured |
| 7-Zip deployment | [`01-7zip-installed-validation.png`](../screenshots/07-software-deployment/01-7zip-installed-validation.png) | Installation verified; GPO package settings not captured |
| DHCP scope, binding and options | [`02-dhcp-scope-created.png`](../screenshots/08-dhcp-networking/02-dhcp-scope-created.png), [`03-dhcp-binding-lan-domain.png`](../screenshots/08-dhcp-networking/03-dhcp-binding-lan-domain.png), [`04-dhcp-scope-options.png`](../screenshots/08-dhcp-networking/04-dhcp-scope-options.png) | Verified |
| Successful DHCP lease | [`05-dhcp-lease-success-client01.png`](../screenshots/08-dhcp-networking/05-dhcp-lease-success-client01.png) | Verified |
| APIPA/no-Discover incident | [`09-troubleshooting`](../screenshots/09-troubleshooting/) | Documented |

## Evidence limitations

- Rows marked "Performed; not captured" were carried out in the lab but have no screenshot in this repository.
- The two NTFS screenshots in `screenshots/extras/` are low-resolution crops.
- A USB restriction GPO is excluded because completion was not fully validated.
- Names for HR, Marketing, and Sales user accounts are omitted until rechecked in ADUC.
- The domain-join screenshot demonstrates the workflow; the AD/DNS and client validation evidence collectively supports the completed domain configuration.
