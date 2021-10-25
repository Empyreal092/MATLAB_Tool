
set(0,'DefaultFigureVisible','off')

files = dir(fullfile(pwd, '*.fig'));

for i = 1:height(files)
    fig_nm = files(i).name;
    fig_file = openfig(fig_nm);
    saveas(fig_file,fig_nm(1:end-4),"epsc")
end

set(0,'DefaultFigureVisible','on')