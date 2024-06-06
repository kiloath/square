```
cd ~ ; rm ~\korice\korust -r -fo
ni ~\korice\korust -i d -f | cd
# cd ~\korice\korust
code .
```
> * copy workspace\korust\\*
> * 在容器中重新開啟
```
cargo leptos new --git https://github.com/leptos-rs/start-axum-workspace/
* rice05_01
* Yes: Use nightly feature?
cd rice05_01
git add .;git commit -m 'first commit'
cargo leptos serve
```
> * 瀏覽網站
```
cargo leptos build --release -vv
cd / && rm -r /workspaces/korust/output
mkdir /workspaces/korust/output && cd "$_"
cp /workspaces/korust/rice05_01/target/release/server /workspaces/korust/output
cp -r /workspaces/korust/rice05_01/site /workspaces/korust/output
export LEPTOS_SITE_ADDR="127.0.0.1:3005"
./server
```
> * 瀏覽網站
