var width;
var height;

if global.resolution < 6 {
	global.resolution += 1;
} else if global.resolution = 6 {
	global.resolution = 0;
}

image_index = global.resolution;

switch global.resolution {
	case 0:
		width = 1920;
		height = 1080;
		break;
		
	case 1:
		width = 1600;
		height = 900;
		break;
		
	case 2:
		width = 1400;
		height = 1050;
		break;
		
	case 3:
		width = 1366;
		height = 768;
		break;
		
	case 4:
		width = 1280;
		height = 720;
		break;
		
	case 5:
		width = 1024;
		height = 768;
		break;
		
	case 6:
		width = 800;
		height = 480;
		break;
}

ini_open("game_settings.sav");
ini_write_real("resolution","width",width);
ini_write_real("resolution","height",height);
ini_write_real("resolution","resolution",global.resolution);
ini_close();

global.width = width;

scr_resolution_set();
global.height = height;