```
# cd ~\korice\kotauri\rice06_04
cd ~;rm ~\korice\kotauri\rice06_04 -r -fo
ni ~\korice\kotauri -i d -f | cd
cargo init rice06_04
cd rice06_04
cargo add leptos --features=csr
ac .gitignore /dist
cargo add console_error_panic_hook console_log log
git init -q;git add .;git commit -m 'first commit'
```
> * copy rice06\rice06_04
```
trunk serve
```
> * 瀏覽網站
```
code .
```
* src/main.rs
```
console_error_panic_hook::set_once();
```
> * 瀏覽網站
```
cargo install leptosfmt
```
* leptosfmt.toml
```
max_width = 100 # Maximum width of each line
tab_spaces = 4 # Number of spaces per tab
indentation_style = "Auto" # "Tabs", "Spaces" or "Auto"
newline_style = "Auto" # "Unix", "Windows" or "Auto"
attr_value_brace_style = "WhenRequired" # "Always", "AlwaysUnlessLit", "WhenRequired" or "Preserve"
macro_names = [ "leptos::view", "view" ] # Macro names which will be formatted
```
> * F1->Open Workdspace settings(JSON)
* .vscode\settings.json
```
{
    "rust-analyzer.rustfmt.overrideCommand": [
        "leptosfmt",
        "--config-file",
        "${workspaceFolder}\\leptosfmt.toml",
        "--stdin",
        "--rustfmt",
    ]
}
```
> * leptosfmt.toml: tab_spaces = 40
> * lib.rs: Shift+Alt+F
