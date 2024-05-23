use bevy::{prelude::*, window::WindowResolution};
use bevy_egui::{egui, EguiContexts, EguiPlugin};
fn main() {
    App::new()
    .add_plugins(DefaultPlugins.set(WindowPlugin{
        primary_window: Some(Window {
            title: "Bevy game".to_string(),
            resolution: WindowResolution::new(800.,600.).with_scale_factor_override(1.0),
            canvas: Some("#bevy".to_owned()),
            prevent_default_event_handling: false,
            ..default()
        }),
        ..default()
    }))
    .add_plugins(EguiPlugin)
    .add_systems(Update, ui_example_system)
    .run();
}

fn ui_example_system(mut contexts: EguiContexts) {
    egui::Window::new("Hello").show(
        contexts.ctx_mut(), |ui| {
            ui.label("world");
        });
}
