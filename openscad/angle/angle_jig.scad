
/**
* Simple Angle Block Fixture
*
* @file       angle_jig.scad
* @brief      Open SCAD code for a simple angle block fixture
* @author     Jessica Henrich
* @copyright  GNU GPL v3.0 
* @version    0.1
* @date       1/14/2023
*
*
* HOW TO USE:
*
* Load into Open SCAD
*
* Use the parameters to customize the size and angle
* needed.
*
* 1. Height - Defines the overall height
* 2. Length - Defines the overall length
* 3. Width  - Defines the thickness in 16ths/inch
* 4. Step Height - Height of the slope start from the base
* 5. Shoulder Width - Width of the shoulder (use zero for none)
*
*/

// Simple Angle Block

// Height of the block
height = 1.5;

// Length of the block
length = 6.0;

// Block Width in 16ths of an inch
width_in_sixteenths  = 5;

// Angle in degrees
angle  = 30;

// Shoulder Width
sh_width = 1.5;

// Step height
step_height = .5;

width = width_in_sixteenths / 16;

difference()
{
   cube([width,length,height]);
   translate([0,sh_width,step_height])
   {
	rotate([angle,0,0])
	{
         cube([width,length+1,height]);
	}
   }
	
}
