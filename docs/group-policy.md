# Group Policy

## Policies implemented

| GPO/policy | Configuration | Target/result |
|---|---|---|
| Default Domain Policy | Password and account lockout settings | Domain users |
| Finance drive mapping | Maps `\\DC01\Finance` to `F:` | `Finance Users` via item-level targeting |
| Block - Control panel | Prohibit access to Control Panel: Enabled | `GG_ControlPanel_Restricted` |
| Software Deployment | Assigned 7-Zip MSI | Domain client computer |

The exact display names shown in GPMC should be treated as the source of truth; descriptive labels above reflect the implemented functions.

![Item-level targeting](../screenshots/04-gpo-drive-mapping/01-item-level-targeting-finance-users.png)

![Control Panel policy](../screenshots/05-gpo-control-panel/01-control-panel-policy-enabled.png)

![Security filtering](../screenshots/05-gpo-control-panel/02-security-filtering-policy-group.png)

## Validation

```powershell
gpupdate /force
gpresult /r
gpresult /h report.html
```

The Control Panel case demonstrated that a target must be in the correct OU/scope and must be able to read the GPO before policy processing can apply it.

