$korust = 'korust13'
$w='~\korice\korust_build'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\$korust\Dockerfile" .
docker rmi $korust
docker build -t "${korust}:latest" .
cd ~;rm $w -r -fo
