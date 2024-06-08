use leptos::*;
use rice06_05_ui::simple_counter::SimpleCounter;

fn main() {
    _ = console_log::init_with_level(log::Level::Debug);
    console_error_panic_hook::set_once();
    mount_to_body(|| {
        view! { <SimpleCounter initial_value=0 step=1/> }
    })
}
