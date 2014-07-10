$packageName = 'ProjectMyScreen'
$installerType = 'msi'
$url = 'http://www.microsoft.com/en-us/download/confirmation.aspx?id=42536'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes

Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

