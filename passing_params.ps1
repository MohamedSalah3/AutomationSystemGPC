#passing parameters 
<#
[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog.InitialDirectory = "C:\"
$OpenFileDialog.Filter="All files (*.*)| *.*"
$OpenFileDialog.ShowDialog() | Out-Null
$OpenFileDialog.filename
#>

[CmdletBinding()]
#naming parameters
Param(
[parameter(Mandatory =$True,Position=1)]
[string]$initdir,
[parameter(Mandatory =$True,Position=2)]
[string]$filter
)

[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog.initialDirectory = $initdir #param 0
$OpenFileDialog.filter = $filter #param 1
$OpenFileDialog.ShowDialog() | Out-Null
$OpenFileDialog.filename
#use this for calling 
#./passing_params.ps1 -filter "All files (*.*)| *.*" -initdir "C:\"