if(-not$korust) { '請設定參數$korust';return }
$w="~\korice\$korust"
cd ~;rm $w -r -fo;ni $w -i d -f;cd $w
copy -r "~\korice\square\workspace\$korust\.devcontainer" . -fo
code .