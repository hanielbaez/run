// Set the resolution we want to display, or get this value from the device
var displayWidth = display_get_width();
var displayHeight = display_get_height();

// Set the size of GUI

display_set_gui_size(720, 1280);

//Set the resolution we've programmed the game for
var baseWidth = 720;
var baseHeight = 1280;

// Determine the aspect ratio
var aspect = baseWidth/baseHeight;

//Work out the adjusted height and width
if (displayWidth >= displayHeight) //< if for mobile
{
	var height = min(baseHeight, displayHeight);
	var width = height * aspect;
}

// Resize the aplication surface to our adjusted values
surface_resize(application_surface, width, height);