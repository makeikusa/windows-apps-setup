# windows-apps-setup


$url = "https://api.github.com/repos/makeikusa/windows-apps-setup"
$destination = "$home\downloads\{repo}.zip"
Invoke-WebRequest -Uri $url -OutFile $destination