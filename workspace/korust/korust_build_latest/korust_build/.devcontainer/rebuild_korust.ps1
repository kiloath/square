$w='~\korice\korust_build'
cd ~
if(Test-Path $w) {rm $w -r -fo}
ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust\korust_build_latest\korust_build\.devcontainer" .
cd .\.devcontainer\
docker rmi "kiloath/korust:latest"
docker build -t "kiloath/korust:latest" .
cd ~;rm $w -r -fo
