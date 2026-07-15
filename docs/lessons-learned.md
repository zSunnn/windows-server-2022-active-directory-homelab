# Lessons Learned

## Group Policy requires both scope and permission

A GPO can be linked correctly and still fail to apply. The target needs the correct OU/scope, security filtering, and permission to read the policy. `gpresult` was more reliable than assuming that a successful `gpupdate` meant the policy had applied.

## User and computer configuration have different processing contexts

User Configuration follows the signed-in user and the user's applicable OU/GPO scope. Computer Configuration follows the computer account. Troubleshooting became faster after checking which side of the policy contained the setting.

## Virtual network topology affects DHCP broadcasts

The temporary second NAT adapter introduced an unintended network path and made DHCP behaviour difficult to reason about. Symptoms included APIPA addressing, renew timeouts, no lease on DC01, and no recorded Discover traffic. Standardising both VMs on one VMnet1 host-only adapter restored predictable DHCP delivery.

## Share and NTFS permissions work together

Publishing an SMB share does not replace filesystem permissions. Both layers must be reviewed, and inherited entries can prevent the intended departmental access model until inheritance is handled deliberately.

## Validate outcomes, not just configuration

The strongest evidence came from testing with different identities and checking observable outcomes: Finance access succeeded, IT access failed, `F:` appeared, Control Panel was blocked, 7-Zip was installed, the account was unlocked, and the DHCP lease appeared on the server.

## Useful diagnostic tools

- `gpresult` for Resultant Set of Policy
- `Get-DhcpServerv4Statistics` and lease queries for DHCP
- `Search-ADAccount` and `Unlock-ADAccount` for account recovery
- `ipconfig`, `ping`, and `nslookup` for client-side network validation

