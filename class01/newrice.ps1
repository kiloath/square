if(-not$korust) { '請設定參數$korust';return }
$w="~\korice\$korust"
cd ~
if($koreset) {
    Clear-Variable koreset
    docker rm $korust
    if(Test-Path $w) 
    {
        rm $w -r -fo
    }
}
New-Item $w -ItemType Directory -Force
cd $w
copy -r "~\korice\square\workspace\$korust\.devcontainer" . -fo
code .