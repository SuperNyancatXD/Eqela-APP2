

/*
 * Main.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class Main : LayerWidget, EventReceiver
{
    public void initialize() {
        base.initialize();
        set_draw_color(Color.instance("black"));
        set_size_request_override(px("50mm"), px("70mm"));
        add(CanvasWidget.for_colors(Color.instance("red"),Color.instance("green")));

        add(LabelWidget.for_string("UST").set_font(Theme.font().modify("6mm bold color = blue outline-color=white")));
        add(ButtonWidget.for_string("Click here")
            .set_event("GG"));
        
    }
    public void on_event(Object o) {
        if("GG".equals(o)){
		Log.message("Button Clicked");
		}
    }

    public void cleanup() {
        base.cleanup();
    }
}