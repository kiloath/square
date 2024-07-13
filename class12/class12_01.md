# class12_01
## 
* 建Images
```
$w='~\korice\korust_build'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust12\korust_build\.devcontainer" .
cd .\.devcontainer\
copy "~\korice\square\assets\export_crt.ps1" .
.\rebuild_korust.ps1
cd ~;rm $w -r -fo
```
* 建Conainter
```
$w='~\korice\korust12'
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\korust12\korust\.devcontainer" . -fo
code .
```
> * 在容器中重新開啟
