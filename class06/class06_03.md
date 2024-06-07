```
# cd ~\korice\kotauri\rice06_03
cd ~;rm ~\korice\kotauri\rice06_03 -r -fo
ni ~\korice\kotauri -i d -f | cd
cargo init rice06_03
cd rice06_03
cargo add leptos --features=csr
code .
```
* index.html
```
<!DOCTYPE html>
<html>
  <head></head>
  <body></body>
</html>
```
* src/main/rs
```
use leptos::*;

fn main() {
    mount_to_body(|| view! { <p>"Hello, world!"</p> })
}
```
```
trunk serve
```
> * 瀏覽網站
```
ac .gitignore /dist
git init -q;git add .;git commit -m 'first commit'
cargo add console_error_panic_hook cargo add console_log log
```
> * copy rice06\rice06_03
```
git add .;git commit -m 'step1'
trunk serve
```
> * 瀏覽網站
```
git add .;git commit -m 'step2'
```

