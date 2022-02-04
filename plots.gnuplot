set terminal pngcairo size 1600,1200
set output "plots.png"
# data file is 'trane_data.tsv'

set xrange [65:100]

set title "CAPFT data at 42°F CHWST"

set xlabel "CWRT (°F)"
set ylabel "CAPFT"

# Set delimiter to a tab
set datafile separator "\t"

# X data first column, Y data remianing columns
# Has header row
plot 'trane_data.tsv' using 1:2 title 'ReformEIRChiller Trane CGWD 207kW/3.99COP/None CAPFT' with lines, \
     'trane_data.tsv' using 1:3 title 'ReformEIRChiller Trane CVHF 2184kW/6.78COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:4 title 'ReformEIRChiller Trane CVHF 2043kW/9.08COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:5 title 'ReformEIRChiller Trane CVHF 1758kW/6.87COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:6 title 'ReformEIRChiller Trane CVHE 1407kW/7.14COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:7 title 'ReformEIRChiller Trane CVHF 2567kW/11.77COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:8 title 'ReformEIRChiller Trane CVHF 1681kW/6.59COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:9 title 'ReformEIRChiller Trane CVHE 1442kW/6.61COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:10 title 'ReformEIRChiller Trane CVHF 2317kW/6.33COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:11 title 'ReformEIRChiller Trane RTHB 1051kW/5.05COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:12 title 'ReformEIRChiller Trane RTHB 542kW/5.26COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:13 title 'ReformEIRChiller Trane RTHB 538kW/5.12COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:14 title 'ReformEIRChiller Trane CVHF 4610kW/6.34COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:15 title 'ReformEIRChiller Trane CVHE 1080kW/7.39COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:16 title 'ReformEIRChiller Trane RTHC 1094kW/6.55COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:17 title 'ReformEIRChiller Trane RTHB 531kW/4.83COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:18 title 'ReformEIRChiller Trane CVHF 1779kW/6.18COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:19 title 'ReformEIRChiller Trane CVHF 1758kW/5.96COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:20 title 'ReformEIRChiller Trane CVHE 1372kW/7.49COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:21 title 'ReformEIRChiller Trane RTHC 1066kW/5.73COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:22 title 'ReformEIRChiller Trane RTHC 1009kW/5.37COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:23 title 'ReformEIRChiller Trane CVHF 4677kW/6.27COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:24 title 'ReformEIRChiller Trane CVHF 1758kW/6.46COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:25 title 'ReformEIRChiller Trane CVHF 2300kW/8.10COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:26 title 'ReformEIRChiller Trane CVHE 1125kW/4.89COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:27 title 'ReformEIRChiller Trane RTWA 383kW/4.17COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:28 title 'ReformEIRChiller Trane CVHG670-44&86 2490kW/6.5COP CAPFT' with lines, \
     'trane_data.tsv' using 1:29 title 'ReformEIRChiller Trane CVHE 1758kW/5.96COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:30 title 'ReformEIRChiller Trane CVHE 1329kW/5.38COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:31 title 'ReformEIRChiller Trane RTHC 707kW/7.77COP/Valve CAPFT' with lines, \
     'trane_data.tsv' using 1:32 title 'ReformEIRChiller Trane CVHE 1484kW/9.96COP/VSD CAPFT' with lines, \
     'trane_data.tsv' using 1:33 title 'ReformEIRChiller Trane CVHE 1129kW/7.19COP/Vanes CAPFT' with lines, \
     'trane_data.tsv' using 1:34 title 'ReformEIRChiller Trane CVHF 2799kW/6.40COP/Vanes CAPFT' with lines
