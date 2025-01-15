$korust = 'korust2'
$version = '1.1'
$w='~\korice\korust_build'
cd ~
if(Test-Path $w) {rm $w -r -fo}
ni $w -i d -f;cd $w
copy "~\korice\square\images\$korust\script\*" .
docker rmi $korust
docker build -t "kiloath/${korust}:${version}" .
cd ~;rm $w -r -fo
docker tag "kiloath/${korust}:${version}" "kiloath/${korust}:latest"