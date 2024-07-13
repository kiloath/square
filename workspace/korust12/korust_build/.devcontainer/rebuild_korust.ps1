$w='~\korice\korust_build'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust12\korust_build\.devcontainer" .
cd .\.devcontainer\
copy "~\korice\square\assets\export_crt.ps1" .
.\export_crt.ps1
docker rm korust12 -f
docker rmi korust12base
docker rmi korust12
docker build -t korust12base:latest .
devcontainer build --workspace-folder .. --image-name korust12:latest
cd ~;rm $w -r -fo
$w='~\korice\korust12'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust12\korust\.devcontainer" . -fo