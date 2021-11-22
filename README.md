# MATLAB_Tool
These are some tools for MATLAB that I use often. 
Specifically, if some MATLAB code I wrote prompts you that some scripts are missing, they are most likely here. 

I set up my MATLAB to have these tools available by default. 
To do this, I change the MATLAB [``userpath``](https://www.mathworks.com/help/matlab/ref/userpath.html) to the folder containing these files. 
This way on MATLAB startup these files will be in MATLAB's search path and [``startup.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/startup.m) will run.

Additional to these files, I also have [matlab-schemer](https://github.com/Empyreal092/matlab-schemer) and [chebfun](https://github.com/chebfun/chebfun) in the folder.

Now a description of what these scripts does:

1. [``figure_default.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/figure_default.m): set the default figure properties to the style that I perfer. In particular, the text interpreter are set to be `'latex'` and the color for line plots are ones freindly to colorblindness.
2. [``pplot.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/pplot.m): (pretty (enough) plot) call this function after the plotting commands. It sizes the figures so that they can be placed on a document without being scaled. 8cm is the right width so that 2 figures fit on a letter page side-by-side. (This function also place the figure on the monitor that works for my dual monitors setup, play with ``x0`` and ``y0`` to make this work for you)
3. [``figs_convert.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/figs_convert.m): call this function to convert all fig files in the folder to another type of files (the default is eps).
