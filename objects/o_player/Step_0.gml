/// @description:
// A step event is ran every step of the game. IE..60 fps = 60 steps a second


// Player Structure
// These 4 steps and strategies are used to get the player going at a boiler plate level

// Get User Inputs
var up = keyboard_check(vk_up) || keyboard_check(ord("W")); // Check for "up" key and "w" key
var down = keyboard_check(vk_down) || keyboard_check(ord("S"));
var left = keyboard_check(vk_left) || keyboard_check(ord("A"));
var right = keyboard_check(vk_right) || keyboard_check(ord("D"));


// ******Calculating Movements******
hsp += (right - left) * walk_spd;

// Drag
hsp = lerp(hsp, 0, drag);

// Stop
if abs(hsp) <= 0.1 hsp = 0;

// Face correct way
if hsp != 0 facing = sign(hsp);

// Limit Speed
hsp = min(abs(hsp), max_hsp) * facing;

// **********************************

// Apply Movements


// Apply Animations