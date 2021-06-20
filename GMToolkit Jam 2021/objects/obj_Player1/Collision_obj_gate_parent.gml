/// @description Changes color when touching gates
if(instance_place(x,y,obj_gate_parent) != noone)
{
	Color = instance_place(x,y,obj_gate_parent).Color
}
switch(Color)
{
	case "Green": image_index = 1; break;
	case "Yellow": image_index = 2; break;
	case "Blue": image_index = 3; break;
	case "Red": image_index = 4; break;
	case "Purple": image_index = 5; break;
}