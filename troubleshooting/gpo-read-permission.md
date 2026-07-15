# Case Study: GPO Read-Permission Failure

## Problem

A Finance user could still open Control Panel even though the restriction GPO was configured, linked, and security filtered.

## Investigation

1. Confirmed the policy setting was enabled.
2. Reviewed the user's OU and group membership.
3. Ran `gpupdate /force` and `gpresult /r`.
4. Confirmed the GPO was not in the user's applied-policy list.
5. Reviewed GPO delegation and permissions.

![Policy missing before permission fix](../screenshots/05-gpo-control-panel/04-gpresult-before-read-fix.png)

## Root cause

The filtered target did not have the required Read permission for the GPO. Security filtering alone did not provide a complete processing path.

## Resolution and validation

Read access was restored for the appropriate target while maintaining the intended Apply Group Policy filtering. After policy refresh and a new user session, Control Panel access was blocked.

![Control Panel blocked](../screenshots/05-gpo-control-panel/05-control-panel-blocked-validation.png)

## Takeaway

Check scope, Read, and Apply Group Policy as separate conditions. Use `gpresult` to validate the effective outcome.

