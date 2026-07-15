# Commands used to validate and recover locked Active Directory accounts.
# Run from an elevated PowerShell session with the ActiveDirectory module.

Import-Module ActiveDirectory

Search-ADAccount -LockedOut
Get-ADUser -Identity 'nguyenlux' -Properties LockedOut, MemberOf
Get-ADPrincipalGroupMembership -Identity 'nguyenlux' |
    Select-Object -Property Name

# Recovery action used in the lab.
Unlock-ADAccount -Identity 'nguyenlux'

