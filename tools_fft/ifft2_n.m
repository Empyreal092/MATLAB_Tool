%standard 2D fourier inverse transformation
function res=ifft2_n(x,sym_flag)

arguments
    x
    sym_flag='notsym';
end

[Nx,Ny]=size(x);
if strcmp(sym_flag,'symmetric')
    res=ifft2(x,'symmetric')*(Nx*Ny); % correct normalization
else
    res=ifft2(x)*(Nx*Ny); % correct normalization
end

end