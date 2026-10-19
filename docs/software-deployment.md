# Software Deployment

7-Zip was deployed using Group Policy Software Installation under Computer Configuration. The package was assigned to the client and installation was validated in Windows Installed Apps.

The Software Installation package settings in the GPO are not included as a screenshot. The evidence is the installed application on the client:

![7-Zip installed](../screenshots/07-software-deployment/01-7zip-installed-validation.png)

The MSI itself is not included in this repository. Production deployments should use a controlled software share, tested package versions, change management, and rollback planning.
