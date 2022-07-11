function heatmap2d(data,x_mesh,y_mesh)
arguments
	data
	x_mesh = NaN;
    y_mesh = NaN;
end

if isnan(x_mesh)
    colorplot = pcolor(data);
else
    colorplot = pcolor(x_mesh,y_mesh,data);
end
set(colorplot, 'EdgeColor', 'none')
colorbar
axis equal

end

