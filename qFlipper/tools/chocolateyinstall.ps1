
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64 = 'https://update.flipperzero.one/builds/qFlipper/1.1.2/qFlipperSetup-64bit-1.1.2.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'qFlipper*'
  checksumType   = 'sha256' 
  checksum64     = '580B05593C7CDB0A6CEE724ABBC9F28827A4485B6E2476CB7C84EA74DE46EB57'
  checksumType64 = 'sha256' 
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs 

