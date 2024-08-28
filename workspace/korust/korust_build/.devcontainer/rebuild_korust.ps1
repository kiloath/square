$korust = 'korust'
$w='~\korice\korust_build'
cd ~
if(Test-Path $w) {rm $w -r -fo}
ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\$korust\korust_build\.devcontainer" .
cd .\.devcontainer\
copy "~\korice\square\assets\export_crt.ps1" .
.\export_crt.ps1
docker rmi "${korust}base"
docker rmi "kiloath/$korust"
# docker build --network=host --no-cache -t "${korust}base:latest" .
docker build -t "${korust}base:latest" .
# devcontainer build --no-cache --workspace-folder .. --image-name "kiloath/${korust}:latest"
devcontainer build --workspace-folder .. --image-name "kiloath/${korust}:latest"
docker rmi "${korust}base"
cd ~;rm $w -r -fo
