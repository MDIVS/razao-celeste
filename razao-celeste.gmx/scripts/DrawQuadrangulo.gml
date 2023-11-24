///DrawQuadrangulo( x1, y1, x2, y2, x3, y3, x4, y4, outline )
if (argument8) {
    draw_primitive_begin(pr_linestrip);
    draw_vertex(argument0,argument1);
    draw_vertex(argument2,argument3);
    draw_vertex(argument4,argument5);
    draw_vertex(argument6,argument7);
    draw_vertex(argument0,argument1);
    draw_primitive_end();
}
