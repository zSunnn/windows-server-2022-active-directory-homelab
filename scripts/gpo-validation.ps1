# Group Policy refresh and Resultant Set of Policy validation.
# gpupdate and gpresult are Windows command-line utilities invoked from PowerShell.

gpupdate.exe /force
gpresult.exe /r

$reportDirectory = Join-Path -Path $env:TEMP -ChildPath 'LamHomeLab'
New-Item -Path $reportDirectory -ItemType Directory -Force | Out-Null
gpresult.exe /h (Join-Path -Path $reportDirectory -ChildPath 'gpo-report.html')

