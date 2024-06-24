# class11_01
* 建Images
```
$w='~\korice\korust_build'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust_build\.devcontainer" .
cd .\.devcontainer\
.\rebuild_korust.ps1
cd ~;rm $w -r -fo
```
* 建Conainter
```
$w='~\korice\korust'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust\.devcontainer" .
git init -q;git add .;git commit -m 'first commit'
code .
```
> * 在容器中重新開啟
