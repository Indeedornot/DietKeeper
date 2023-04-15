dotnet build -p:TailwindBuild=false
start "npm" -ArgumentList "run watch" 
while (!(Test-Path "./node_modules/.package-lock.json")) { sleep -ms 100 } 
dotnet run watch