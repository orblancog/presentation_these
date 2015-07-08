set terminal postscript enhanced landscape color "Times-Roman,30" linewidth 3 
set output "sigmas.eps"
#set title "Beamsize^2 vs angle, L (dipole) = 100[m]"
#set label 8 "PLACET" at 2e-4,10.0e-13;
#set label 7 "MAPCLASS2" at 2e-4,6.8e-13;
#set label 6 "PLACET" at 2e-4,2.6e-12;
#set label 5 "MAPCLASS2" at 2e-4,10.0e-12;
#set label 4 "MAPCLASS2" at 2e-4,4e-11;
#set label 3 "PLACET" at 2e-4,8.2e-11 left;
#set label 2 "PLACET" at 2e-4,2.1e-12 left;
#set label 1 "MAPCLASS2" at 2e-4,5.3e-12 left;
#set xrange [9e-8:];

#unset xtics;
#unset x2tics;
#unset ytics;
#set x2range [0.9*5000*1e-4/1:5000*1e-4/150];
#set ytics 0.02;
#set xrange [0.9:150];
#set yrange [0.95:1.05];
#set format x2 "10^{%L}";
#set x2label 'B [T]';
set format y "10^{%L}";
set xtics 1
set log y
#set format y "%.2f"
#set xlabel '{/Symbol Q} [rad]';
set xlabel 'order';
#set xtics nomirror;
#set x2tics nomirror;
#set log x2;
set ylabel '{/Symbol s} (nm)';
plot 'beam_size.dat' u 1:($2*1e9) w l t 'x', '' u 1:($3*1e9) w l t 'y'
