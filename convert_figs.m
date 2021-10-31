function [] = convert_figs(file_type)
% call this function to convert all fig files in the folder to another type of files (the default is eps).
% input the file type as string

arguments
    file_type = "eps";
end

set(0,'DefaultFigureVisible','off')

files = dir(fullfile(pwd, '*.fig'));

for i = 1:height(files)
    fig_nm = files(i).name;
    fig_file = openfig(fig_nm);
    if file_type == "eps"
        saveas(fig_file,fig_nm(1:end-4),"epsc")
    else
        saveas(fig_file,fig_nm(1:end-4),file_type)
    end
end

set(0,'DefaultFigureVisible','on')
end