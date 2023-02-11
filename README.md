# windows-apps-setup


$url = "https://api.github.com/repos/makeikusa/{repo}/zipball/master"
$destination = "$env:TEMP\{repo}.zip"
Invoke-WebRequest -Uri $url -OutFile $destination