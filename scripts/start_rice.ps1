if(-not$korust) { '請設定參數$korust';return }
$w="~\korice\$korust"
cd ~
New-Item $w -ItemType Directory -Force
cd $w
copy -r "~\korice\square\$korust\.devcontainer" . -fo
code .