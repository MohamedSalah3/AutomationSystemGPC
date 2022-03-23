#functions 

#then we will learn how to make a proper function description 

function open_file_dialog
{
<#
.SYNOPSIS
open a file dialog

.DESCRIBTION
use this function when you need to see a selection of files to open 

.Notes
Author : Mohamed Salah , Data:01/03/2022

.PARAMETER initdir
The directory to be displayed when the dialog opens.

.PARAMETER title
This is the title to be put in the window title bar.

.PARAMETER filter
The file filter you want applied, such as *.csv in the format 'All files (*.*)| *.*' .

.PARAMETER multifile
Switch that is passed enables multiple files to be selected.

.LINK
Place link here.

.EXAMPLE
Invoke-UdfOpenFileDialog "C:\" "All files (*.*)| *.*" -multifile

.EXAMPLE
Invoke-UdfOpenFileDialog "C:\" "All files (*.*)| *.*"

#>



[CmdletBinding()]
Param(
[Parameter(Mandatory=$True,Position=0)]
[string]$initdir,
[Parameter(Mandatory=$True,Position=1)]
[string]$filter,
[switch]$multifile
)

[System.Reflection.Assembly]::LoadWithPartialName("System.windows.forms") | Out-Null
$OpenFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$OpenFileDialog.initialDirectory = $initdir
$OpenFileDialog.filter = $filter
If ($multifile)
{
$OpenFileDialog.Multiselect = $true
}
$OpenFileDialog.ShowDialog() | Out-Null
$OpenFileDialog.filename
}

<#we call the script first then 
#we call functions in cmd like this open_file_dialog "C:\" "All files (*.*)| *.*" -multifile
                     Name of the function param param #>              
function sum_numbers {
Param(
[Parameter(Mandatory=$True,Position=0)]
[int]$Number1,
[Parameter(Mandatory=$True,Position=1)]
[int]$Number2
)
[int]$answer = $Number1+$Number2
Write-Host "The sum of the numbers is $answer"


}
#How to call me
#C:\cworld\powershell sctripts\Functions.ps1
#open_file_dialog "C:\" "All files (*.*)| *.*" -multifile
sum_numbers -Number1 10 -Number2 30