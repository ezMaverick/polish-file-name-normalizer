@echo off
setlocal
set "script=%~nx0"
powershell -NoProfile -Command "Get-ChildItem -File | Where-Object { $_.Name -ne '%script%' } | ForEach-Object { $map=@{[char]261='a';[char]263='c';[char]281='e';[char]322='l';[char]324='n';[char]243='o';[char]347='s';[char]378='z';[char]260='a';[char]262='c';[char]280='e';[char]321='l';[char]323='n';[char]211='o';[char]346='s';[char]377='z'}; $newName=$_.Name -replace ' ','-'; foreach($k in $map.Keys){$newName=$newName -replace [regex]::Escape($k),$map[$k]}; $newName=$newName.ToLower(); $ext=[System.IO.Path]::GetExtension($newName); $nameOnly=[System.IO.Path]::GetFileNameWithoutExtension($newName); $nameOnly=-join ($nameOnly.ToCharArray() | ForEach-Object {if ($_ -match '[a-z0-9\-]'){$_}else{''}}); $newName=$nameOnly+$ext; if ($_.Name -ne $newName){Rename-Item -LiteralPath $_.FullName -NewName $newName} }"
echo Done.
pause