/// @description Insert description here
// You can write your code in this editor
depth = -1001;
spritew= sprite_get_width(spr_wall_forplayer);
spriteh= sprite_get_height(spr_wall_forplayer);
gap = 4;

c = instance_create_depth(x,y,0,obj_shadow_caster);

c.image_xscale = image_xscale;
c.image_yscale = image_yscale;

c.x+=gap;c.image_xscale = image_xscale-(gap*2/spritew);
c.y+=gap;c.image_yscale = image_yscale-(gap*2/spriteh);



c.image_angle = image_angle;
