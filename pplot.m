function pplot(width,h_ratio,font)
arguments
    width
    h_ratio
    font = 10;
end

set(groot,'DefaultLineLineWidth',1)
set(groot,'DefaultAxesLineWidth',1)
set(groot,'DefaultAxesFontSize',12)
set(groot,'DefaultLegendFontSize',8)
set(groot, 'DefaultAxesFontName', 'Times New Roman')
set(groot,'defaulttextinterpreter','latex');
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');

num_plot_curr_open = mod(length(findobj('type','figure'))-1,8)+1;
% num_plot_curr_open = 3;

if width <= 8
	x0=1+9*(round(num_plot_curr_open/2)-1);
	y0=2+10*mod(num_plot_curr_open+1,2);
else
	x0=1+(width+1)*(round(num_plot_curr_open)-1);
	y0=2;
end
set(gcf,'Units','centimeters','innerposition',[x0,y0,width,width*h_ratio])
set(gca, 'FontName', 'Times New Roman', 'FontSize', font)

end

