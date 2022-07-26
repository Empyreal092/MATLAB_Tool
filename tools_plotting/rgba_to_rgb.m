function [color_mix] = rgba_to_rgb(color_line,color_backgroud)
%RGBA_TO_RGB convery rbga (4 element vector where the last vector is alpha)
%to standard rbg
%cf. https://marcodiiga.github.io/rgba-to-rgb-conversion

arguments
    color_line
    color_backgroud = [255 255 255]/255;
end

alpha = color_line(4);
color_mix = (1 - alpha) * color_backgroud + alpha * color_line(1:3);

end

