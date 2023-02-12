# windows-apps-setup


$url = "https://api.github.com/repos/makeikusa/windows-apps-setup"
$destination = "$home\downloads\windows-apps-setup.zip"
Invoke-WebRequest -Uri $url -OutFile $destination