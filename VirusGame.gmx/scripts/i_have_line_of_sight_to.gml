Thing = argument0
Range = argument1
Vision = argument2/2
Result = false

var x1 = x + lengthdir_x(Range, image_angle - Vision)
var y1 = y + lengthdir_y(Range, image_angle - Vision)
var x2 = x + lengthdir_x(Range, image_angle + Vision)
var y2 = y + lengthdir_y(Range, image_angle + Vision)



if instance_exists(Thing) {
    if collision_line(x,y,Thing.x,Thing.y,oWall,true,true) = noone
    && point_in_triangle(Thing.x,Thing.y,x,y,x1,y1,x2,y2)
    {
        Result = true
    }
}
return Result
