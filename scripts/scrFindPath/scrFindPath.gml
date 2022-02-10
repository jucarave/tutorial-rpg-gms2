function scrFindPath(x1, y1, x2, y2) {
	var path = path_add();
	var points = [];
	
	if (mp_grid_path(objSystem.mapGrid, path, x1, y1, x2, y2, false)) {
		var length = path_get_number(path);
		
		for (var i=1;i<length - 1;i++) {
			points[i - 1] = [
				path_get_point_x(path, i),
				path_get_point_y(path, i),
			];
		}
	}
	
	path_delete(path);
	
	return points;
}