```
# cd ~\korice\kotauri\rice06_0
cd ~;rm ~\korice\kotauri\rice06_02 -r -fo
ni ~\korice\kotauri -i d -f | cd
cargo leptos new --git https://github.com/leptos-rs/start-axum-workspace/
* rice06_02
* No: Use nightly feature?
cd rice06_02
git add .;git commit -m 'first commit'
cargo leptos serve
```
> * 瀏覽網站
```
cargo leptos build --release -vv
cd ~;rm ~/korice/kotauri/web -r -fo
ni ~/korice/kotauri/web -i d -f | cd
cp ~/korice/kotauri/rice06_02/target/release/server ~/korice/kotauri/web
cp -r ~/korice/kotauri/rice06_02/site ~/korice/kotauri/web
export LEPTOS_SITE_ADDR="127.0.0.1:3005"
./server
```
> * 瀏覽網站
