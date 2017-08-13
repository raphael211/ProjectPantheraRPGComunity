$pboManagerConsole = "C:\Program Files\PBO Manager v.1.4 beta\PBOConsole.exe";
$missionName = "Life.Panthera3.pbo";
$serverName = "server.pbo";

$outputPath = Join-Path $PSScriptRoot Output;

$missionPath = Join-Path (Split-Path -Path $PSScriptRoot -Parent) Mission;
$serverPath = Join-Path (Split-Path -Path $PSScriptRoot -Parent) Server;

echo "Creating output Directory";
mkdir $outputPath -Force;

echo "Building mission";
& $pboManagerConsole -pack $missionPath (Join-Path $outputPath $missionName)

echo "Building server";
& $pboManagerConsole -pack $serverPath (Join-Path $outputPath $serverName)