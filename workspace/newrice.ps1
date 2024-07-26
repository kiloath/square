if(-not$korust) { '請設定參數$korust';return }
if(-not$koreset) {}
$w="~\korice\$korust"
cd ~
if($koreset) {
    Clear-Variable koreset
    if(Test-Path $w) 
    {
        rm $w -r -fo
    }
}
New-Item $w -ItemType Directory -Force
cd $w
copy -r "~\korice\square\workspace\$korust\.devcontainer" . -fo
code .