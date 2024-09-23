$w='~\korice\korust_build'
cd ~
if(Test-Path $w) {rm $w -r -fo}
ni $w -i d -f;cd $w
copy -r "~\korice\square\build\*" .
docker rmi "kiloath/korust:latest" -f 2> $null
docker build -t "kiloath/korust:latest" .
cd ~;rm $w -r -fo
