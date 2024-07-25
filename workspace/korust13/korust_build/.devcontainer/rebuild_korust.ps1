$w='~\korice\korust_build'
cd ~;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\$korust\korust_build\.devcontainer" .
cd .\.devcontainer\
copy "~\korice\square\assets\export_crt.ps1" .
.\export_crt.ps1
docker rm $korust -f
docker rmi "${korust}base"
docker rmi $korust
docker build -t "${korust}base:latest" .
devcontainer build --workspace-folder .. --image-name "${korust}:latest"
cd ~;rm $w -r -fo
$w="~\korice\$korust"
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\$korust\korust\.devcontainer" . -fo