Get-ChildItem Cert:\CurrentUser\Root|
Where-Object{
$_.Issuer -match "CN=.*O=Fortinet"}|
Where-Object{
$s=$_.Subject -split ',';
$s2=ForEach-Object{$s -match 'CN='};
$s3 = $s2 -split '=';
Export-Certificate -Cert $_ -FilePath "$($s3[1]).cer";
Start-Process -FilePath 'certutil.exe' `
-ArgumentList "-encode $($s3[1]).cer $($s3[1]).crt"}

docker build -t korustbullseye:latest .
devcontainer build --workspace-folder . --image-name korustbullseye2:latest