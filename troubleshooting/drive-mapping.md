# Case Study: Finance Drive Mapping

## Objective

Map `\\DC01\Finance` as drive `F:` only for members of `Finance Users`.

## Problem

The drive did not appear after `gpupdate /force` and a sign-out/sign-in cycle. The initial evidence suggested a linking or targeting issue.

## Investigation and resolution

- Verified the GPO link.
- Verified the user's Finance group membership.
- Configured item-level targeting for `Finance Users`.
- Refreshed policy and started a new user session.

![Item-level targeting](../screenshots/04-gpo-drive-mapping/01-item-level-targeting-finance-users.png)

## Result

The Finance drive appeared as `F:` for the Finance user. `gpresult` on `CLIENT01` lists the GPO as applied; an Explorer screenshot of the `F:` drive is not included.

![gpresult listing Finance - Map Network Drive](../screenshots/05-gpo-control-panel/04-gpresult-before-read-fix.png)
