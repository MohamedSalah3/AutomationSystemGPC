<#
String manipulation 
this is important and fun :) 
#>


[string] $mystring = "this is a nifty nifty string."
#get part of the string 
Write-Host $mystring.Substring(0,5)
#Get the length of the string 
Write-Host $mystring.Length
#comparing 
Write-Host $mystring.CompareTo("this is a nifty nifty string.")
#0 is match , -1 is no match
#it will output true if it contains nifty 
Write-Host $mystring.Contains("nifty") 
#it will compare the last char with the (".")
Write-Host $mystring.EndsWith(".")
#it will insert the sub string with shifting the string that it will be inserted in its same position 
Write-Host $mystring.Insert(5,"Was")

#convert to uppercase
Write-Host $mystring.ToUpper()

#convert to lowercase
Write-Host $mystring.ToLower()

#strip off spaces in beginning and ending 
Write-Host $mystring.Trim()

Write-Host $mystring.Replace(" is "," was ")
#returns true as there is only Numbers 
$var1 = "4017771234"
$var1 -match "^[0-9]+$"
#returns False as there is a letter B in these numbers 
$var1 = "401B7771234"
$var1 -match "^[0-9]+$"
<#Regular expressions are powerful, but that power comes with complexity; regular expressions are
practically a language in itself. I found the free website below that has, among other useful things, a
searchable regular expression library. You can just search for the expression that fits your needs and copy it.
http://www.regxlib.com/?AspxAutoDetectCookieSupport=1
On that site, contributor Steven Smith supplied a number of useful expressions, a few of which I would
like to share:
#>

"333-444-5555" -match "^[2-9]\d{2}-\d{3}-\d{4}$" # Returns True

#"expression tests for string in date format MM/DD/YYYY:"
"01/01/2014" -match "^\d{1,2}\/\d{1,2}\/\d{4}$" # Returns True


#Replaces all occurrences of the letter e with the letter b.
"ppowershell" -replace 'e', 'b' # Result is 'ppowbrshbll'
#Replaces the letter p with the letter b only if p is the first character.
"ppowershell" -replace '^p', 'b' # Result is 'bpowershell'
#Replaces the letter l with the letter b only if l is the last character.
"ppowershell" -replace 'l$', 'b' #. Outputs ppowershelb