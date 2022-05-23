function [] = figs_convert(file_type)
% call this function to convert all fig files in the folder to another type of files (the default is eps).
% input the file type as string

arguments
    file_type = "pdf";
end

set(0,'DefaultFigureVisible','off')

files = dir(fullfile(pwd, '*.fig'));

for i = 1:height(files)
    fig_nm = files(i).name;
    fig_file = openfig(fig_nm);
    if file_type == "eps"
%         saveas(fig_file,fig_nm(1:end-4),"epsc")
        ax = gcf; exportgraphics(ax,fig_nm(1:end-4)+".eps",'ContentType','vector','BackgroundColor','none')
    elseif file_type == "pdf"
        ax = gcf; exportgraphics(ax,fig_nm(1:end-4)+".pdf",'ContentType','vector','BackgroundColor','none')
    elseif file_type == "png"
        ax = gcf; exportgraphics(ax,fig_nm(1:end-4)+".png",'BackgroundColor','none')
    else
        saveas(fig_file,fig_nm(1:end-4),file_type)
%         ax = gca; exportgraphics(ax,fig_nm(1:end-4)+"."+file_type,'ContentType','vector')
    end
end

set(0,'DefaultFigureVisible','on')
end