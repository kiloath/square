$korust = 'korust1'
$version = '1.0'
$w='~\korice\korust_build'
cd ~
if(Test-Path $w) {rm $w -r -fo}
ni $w -i d -f;cd $w
copy "~\korice\square\images\$korust\script\*" .
copy "~\korice\square\assets\export_crt.ps1" .
& .\export_crt.ps1
docker rmi $korust
docker build -t "kiloath/${korust}:${version}" .
cd ~;rm $w -r -fo
