function Get_Branch_Email
{
<#
.SYNOPSIS
open an excell file and search for branch email 

.DESCRIBTION
use this function when you need to Get the branch email

.Notes
Author : Mohamed Salah , Data:02/03/2022

.PARAMETER Key
    Keys to make search easier
.OUTPUT name
    Branch name 
.PARAMETER email
    Email of the branch 

.PARAMETER PATH
    -CSV PATH
.PARAMETER multifile
Switch that is passed enables multiple files to be selected.

.LINK
Place link here.

.EXAMPLE
C:\cworld\powershell sctripts\handling_CSVfiels.ps1
handling_CSVfiels.ps1
Get_Branch_Email -Path "C:\cworld\powershell_sctripts\mo.csv " -key "MZ"



#>
[CmdletBinding()]
Param(
[Parameter(Mandatory=$True,Position=0)]
[string]$key
)
<#
Import-Csv .\Mo.csv | ForEach-Object {
    Write-Host " Key is $($_.Key) and name is $($_.Name), email is  $($_.email)."
}#>

#$File=Import-Csv .\mo.csv
$File=Import-Csv "C:\Users\Dell\eclipse-workspace\comm\Mo.csv" 

#$searchKey = Read-Host "Enter the required key to search for it "
$searchKey = $Key
$Counter = 0 
while($File[$Counter].key -ne $searchKey ){

$Counter+=1
}
[string] $output_email = $File[$Counter].email
$File[$Counter].key
[string] $output_name = $File[$Counter].name
"NAME : $output_name , $output_email.email ">Output_email_name.txt
}
#Get_Branch_Email -Path "C:\Users\Dell\eclipse-workspace\comm\Mo.csv" -key "MZ"

<#
function Set_Branch_Data{










}


#>