function [samp] = sample_unitShell(dim,N)
% generate N samples from the uniform distribution on the unit shell in R^dim (which mean it is a R^dim-1 "manifold")
% the output is dim-by-N, each column is a sample

gaussian = randn(dim,N);
samp = gaussian./vecnorm(gaussian);

end

