using GLib;

public class XfcePanelPluginHello : Xfce.PanelPlugin
{
    public XfcePanelPluginHello() {
        GLib.Object ();
    }

    public override void @construct()
    {
        var button = (Gtk.Button)Xfce.panel_create_button();
        button.set_label("Hello");
        button.clicked.connect
        (
            () =>
            {
                var service = new Plugin.GreetingService("James Bond");
                var message = service.greet();
                button.set_label(@"$message");
            }
        );
        button.show_all();
        small = true;
        add(button);
        add_action_widget(button);
        menu_show_configure();
        menu_show_about();
    }
}

[ModuleInit]
public Type xfce_panel_module_init(TypeModule module) {
    return typeof (XfcePanelPluginHello);
}