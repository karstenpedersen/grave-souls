//DRAW THE TEXT YOU WANT TO SHOW 
// THIS IS A DAMAGE INDICATOR SO I SHOWE THE DAMAGE
draw_set_halign(fa_center);
draw_set_font(fn_damage);
draw_text_color(x,y,"+" + string(score_),c,c,c,c,image_alpha);
draw_set_halign(fa_left);