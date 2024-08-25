git config --global user.name Kiloath
git config --global user.email Kiloath@example.com
export DISPLAY=`/sbin/ip route|awk '/default/ { print $3 }'`:0.0