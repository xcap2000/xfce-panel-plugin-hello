using GLib;

namespace Plugin
{
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
                    var service = new GreetingService("James Bond");
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
}

// TODO - Does not work inside a namespace. Convention and move to its own file.
[ModuleInit]
public Type xfce_panel_module_init(TypeModule module) {
    return typeof (Plugin.XfcePanelPluginHello);
}