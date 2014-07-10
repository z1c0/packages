$packageName = 'kaxaml' # arbitrary name for the package, used in messages
$installerType = 'msi'
$url = 'http://kaxaml.com/downloads/Kaxaml_1.8.msi'
$silentArgs = '/quiet'
$validExitCodes = @(0)

Install-ChocolateyPackage "$packageName" "$installerType" "$silentArgs" "$url" -validExitCodes $validExitCodes
Install-ChocolateyZipPackage "$packageName" "$url" "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
