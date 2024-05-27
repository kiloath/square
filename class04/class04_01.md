https://book.leptos.dev/islands.html
```
cd ~ ; rm ~\korice\korust04 -r -fo
ni ~\korice\korust04 -i d -f | cd
# cd ~\korice\korust04
cargo leptos new --git leptos-rs/start-axum
* rice04_01
* Yes: Use nightly feature?
cd rice04_01
git init -q;git add .;git commit -m 'first commit'
# npm install -g sass
cargo leptos build -vv
cargo leptos watch
start http://127.0.0.1:3000
```
> * copy rice02\rice04_01
```
git add .;git commit -m 'islands1'
# npm install -g binaryen
cargo leptos build --release -vv
target\release\rice04_01.exe
start http://127.0.0.1:3000
```
> * rice04_01.exe (6,229KB) -> (6,240KB)
> * rice04_01.js     (45KB) ->    (35KB)
> * rice04_01.wasm  (368KB) ->   (179KB)
* 佈署
```
cd ~ ; rm ~\korice\korust04\output -r -fo -ea si
ni ~\korice\korust04\output -i d -f | cd
copy ~\korice\korust04\rice04_01\target\release\rice04_01.exe ~\korice\korust04\output
copy ~\korice\korust04\rice04_01\target\site ~\korice\korust04\output -r
$env:LEPTOS_SITE_ROOT="site"
$env:LEPTOS_SITE_ADDR="127.0.0.1:8081"
.\rice04_01.exe
start http://127.0.0.1:8081
```
