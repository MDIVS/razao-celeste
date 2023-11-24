//draw_lightning(x1, y1, x2, y2, col1, col2, glow_col, step_length, max_width)

var x1, y1, x2, y2, step, dir, ortho, x_old, y_old, x_new, y_new, col1, col2;
x1 = argument0;
y1 = argument1;
dir = point_direction(x1, y1, argument2, argument3);
step = argument7;

draw_primitive_begin(pr_linestrip);
x_new = x1;
y_new = y1;
draw_vertex_color(x1, y1, merge_color(argument4, argument5, random(1)), 1);

for (line=step; line<point_distance(x1, y1, argument2, argument3); line+=step) {
    x_old = x_new;
    y_old = y_new;
    x_new = x1+lengthdir_x(line, dir);
    y_new = y1+lengthdir_y(line, dir);

    ortho = (dir+choose(-90, 90))mod 360;
    rdm = round(random(argument8/2));

    x_new += lengthdir_x(rdm, ortho);
    y_new += lengthdir_y(rdm, ortho);

    draw_set_blend_mode(bm_add); 
        draw_circle_color(x_new, y_new, step, argument6, c_black, false);
    draw_set_blend_mode(bm_normal)
    draw_vertex_color(x_new, y_new, merge_color(argument4, argument5, random(1)), 1);
}
draw_set_blend_mode(bm_normal);
draw_vertex_color(argument2, argument3, merge_color(argument4, argument5, random(1)), 1);
draw_primitive_end();
