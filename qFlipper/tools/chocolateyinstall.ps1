
$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$url64 = 'https://update.flipperzero.one/builds/qFlipper/1.1.0/qFlipperSetup-64bit-1.1.0.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  unzipLocation  = $toolsDir
  fileType       = 'EXE'
  url64bit       = $url64
  softwareName   = 'qFlipper*'
  checksumType   = 'sha256' 
  checksum64     = 'A0EF36FDF783C8DDD0322409DA051C6942036C42AF137AF626074ADE3295792F'
  checksumType64 = 'sha256' 
  silentArgs     = '/S'
}

Install-ChocolateyPackage @packageArgs 

