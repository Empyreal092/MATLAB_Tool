function grid_func_error = grid_func_norm(grid_func_1,grid_func_2,p)
%% 
% Calcuate the grid function norm of the difference between 2 function
% Output: 
%   grid_func_error: the grid function norm
% Input: 
%   grid_func_1: function 1
%   grid_func_2: function 2 (if this is the zero vector, this function gives the norm of the funciton 1)
%   p: order of the norm, string
%   gridsize: gridsize of the function

%%
if p == "inf" % inf norm means maximum of the absolute value of the function
    grid_func_error = max(abs(grid_func_1-grid_func_2),[],'all');
else
    [Nx,Ny] = size(grid_func_1);
    p = str2num(p);
    grid_diff = abs(grid_func_1-grid_func_2).^p;
    grid_diff = sum(grid_diff,'all')/(Nx*Ny);
    grid_func_error = grid_diff.^(1/p);
end
end

