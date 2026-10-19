# File Services

## Finance share

| Property | Value |
|---|---|
| Physical path | `C:\CompanyShares\Finance` |
| Share name | `Finance` |
| UNC path | `\\DC01\Finance` |
| Mapped drive | `F:` |

Access follows a group-based model: Finance users receive the required NTFS and share access through `Finance Users`. Validation used separate Finance and IT identities to confirm both allowed and denied outcomes.

The allowed and denied test results and the final NTFS permission list were checked on screen but are not included as screenshots. The images below show the folder structure, the share-level permissions and two NTFS editing dialogs.

![Company share structure](../screenshots/03-file-server/01-companyshares-folder-structure.png)

Share tab of the Finance folder: `\\DC01\finance`, with Everyone at Full Control at share level.

![Finance share permissions](../screenshots/03-file-server/02-finance-share-permissions.png)

NTFS editing dialogs (low-resolution crops):

![Adding Finance Users to the NTFS permissions](../screenshots/extras/ntfs-select-finance-users.png)

![Inheritance warning when removing Users](../screenshots/extras/ntfs-inheritance-error.png)

## Permission lesson

Effective access is the most restrictive combination of share and NTFS permissions. NTFS inheritance also needs to be understood before removing inherited principals or assigning departmental access.
