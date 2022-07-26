
# MATLAB_Tool
These are some tools for MATLAB that I use often. 
Specifically, if some MATLAB code I wrote prompts you that some scripts are missing, they are most likely here. 

I set up my MATLAB to have these tools available by default. 
To do this, I change the MATLAB [``userpath``](https://www.mathworks.com/help/matlab/ref/userpath.html) to the folder containing these files. 
This way on MATLAB startup [``startup.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/startup.m) will run and these files will be in MATLAB's search path.

To get [matlab-schemer](https://github.com/Empyreal092/packages/matlab-schemer) when you clone this repo, see the insturction about [``git submodule``](https://git-scm.com/book/en/v2/Git-Tools-Submodules) at the end.

Now a description of what some of these scripts does:

1. [``figure_default.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/tools_plotting/figure_default.m): set the default figure properties to the style that I perfer. In particular, the text interpreter are set to be `'latex'` and the color for line plots are ones freindly to colorblindness.
2. [``pplot.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/tools_plotting/pplot.m): (pretty (enough) plot) call this function after the plotting commands. It sizes the figures so that they can be placed on a document without being scaled. 8cm is the right width so that 2 figures fit on a letter page side-by-side. (This function also place the figure on the monitor that works for my dual monitors setup, play with ``x0`` and ``y0`` to make this work for you)
3. [``figs_convert.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/tools_plotting/figs_convert.m): call this function to convert all fig files in the folder to another type of files (the default is pdf).
4. [``subaxis.m``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/tools_plotting/subaxis/subaxis.m): tools to make formatting subplots easier. From [MATLAB File Exchange](https://www.mathworks.com/matlabcentral/fileexchange/3696-subaxis-subplot), authored by Aslak Grinsted. I made a modification to fix an oversight of the original version, see detail in [``Ryan_change.txt``](https://github.com/Empyreal092/MATLAB_Tool/blob/main/subaxis/tools_plotting/Ryan_change.txt).

To also clone the submodules of this repository, use the insturction about ``git submodule`` available [here](https://git-scm.com/book/en/v2/Git-Tools-Submodules). Specifically, you could clone using
```
git clone --recurse-submodules -j8 https://github.com/Empyreal092/MATLAB_Tool.git
```
or after you have cloned this repo, ``cd`` into the folder, and type in
```
git submodule update --init --recursive
```
