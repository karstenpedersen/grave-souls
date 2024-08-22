parralax_background = true;
shake = true;
shake_a = 0;

if global.sins < global.sins_max/5 {
	sins_imindex = 0;
} else if global.sins < global.sins_max/4 {
	sins_imindex = 1;
} else if global.sins < global.sins_max/3 {
	sins_imindex = 2;
} else if global.sins < global.sins_max/2 {
	sins_imindex = 3;
} else if global.sins >= global.sins_max {
	sins_imindex = 4;
}