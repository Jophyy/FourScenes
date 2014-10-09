
/*
 * S3
 * Created by Eqela Studio 2.0b7.4
 */

public class S3 : SEScene
{
    SESprite mincolor1;
	SESprite mincolor2;
	SESprite mincolor3;
	SESprite mincolor4;
	SESprite text;

    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        rsc.prepare_font("myfont", "arial bold color=black", 25);
        add_entity(SESpriteEntity.for_color(Color.instance("green"), get_scene_width(), get_scene_height()));
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Scene3");
        text.move(0.45*get_scene_width(),0.45*get_scene_height());

        mincolor1=add_sprite_for_color(Color.instance("white"), get_scene_width()*0.12, get_scene_height()*0.07);
        mincolor1.move(0.75*get_scene_width(),0.68*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Main");
        text.move(0.77*get_scene_width(),0.70*get_scene_height());

        mincolor2=add_sprite_for_color(Color.instance("red"), get_scene_width()*0.12, get_scene_height()*0.07);
        mincolor2.move(0.75*get_scene_width(),0.75*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Scene1");
        text.move(0.77*get_scene_width(),0.77*get_scene_height());

        mincolor3=add_sprite_for_color(Color.instance("blue"), get_scene_width()*0.12, get_scene_height()*0.07);
        mincolor3.move(0.75*get_scene_width(),0.82*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Scene2");
        text.move(0.77*get_scene_width(),0.84*get_scene_height());

        mincolor4=add_sprite_for_color(Color.instance("#FF6633"), get_scene_width()*0.12, get_scene_height()*0.07);
        mincolor4.move(0.75*get_scene_width(),0.89*get_scene_height());
        text = add_sprite_for_text(" ", "myfont");   
        text.set_text("Scene4");
        text.move(0.77*get_scene_width(),0.91*get_scene_height());
    }

    public void on_pointer_press(SEPointerInfo ptr) {
	   if(ptr.is_inside(0.75*get_scene_width(),0.68*get_scene_height(),0.80*get_scene_width(),0.73*get_scene_height()))
 	  { 
        base.on_pointer_press(ptr);
        switch_scene(new MainScene()); 
       }
       if(ptr.is_inside(0.75*get_scene_width(),0.75*get_scene_height(),0.80*get_scene_width(),0.80*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S1()); 
       }  
       if(ptr.is_inside(0.75*get_scene_width(),0.82*get_scene_height(),0.80*get_scene_width(),0.87*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S2()); 
       }
       if(ptr.is_inside(0.75*get_scene_width(),0.89*get_scene_height(),0.80*get_scene_width(),0.94*get_scene_height()))
	   { 
        base.on_pointer_press(ptr);
        switch_scene(new S4()); 
       }  
    }

    public void cleanup() {
        base.cleanup();
    }
}