set terminal postscript enhanced landscape color "Helvetica,30" linewidth 3 
set output "eta_opt.eps"
#set output "sigma_Lbend.eps"
#set output "sigma_Ldrift.eps"
#set title "Beamsize^2 vs angle, L (dipole) = 100[m]"
#set label 8 "PLACET" at 2e-4,10.0e-13;
#set label 7 "MAPCLASS2" at 2e-4,6.8e-13;
#set label 6 "PLACET" at 2e-4,2.6e-12;
#set label 5 "MAPCLASS2" at 2e-4,10.0e-12;
#set label 4 "MAPCLASS2" at 2e-4,4e-11;
#set label 3 "PLACET" at 2e-4,8.2e-11 left;
#set label 2 "PLACET" at 2e-4,2.1e-12 left;
#set label 1 "MAPCLASS2" at 2e-4,5.3e-12 left;
set mxtics;
set mytics;
set xtics 2.3,0.1,2.80;
set key at 2.580,-2.0;
set xrange [2.300:];
set yrange [-4:1];
#set format x "10^{%L}";
set format x "%.1t";
#set format y "%s";
#set yrange[0.85:1];
#set xlabel '{/Symbol Q} [rad]';
set xlabel 's [km]';
set ylabel '{/Symbol h} [10^{-2}m], {/Symbol b} [10^{5}m]';
#set ylabel '{/Symbol s^2} rad/{/Symbol s^2} rad APPROX.';
#set log x;
plot "008-twiss.all5" u ($2/1e3):($3/1e-2) w lp ti '{/Symbol h} aft', "008-twiss.edit_sbend_sext" u ($2/1e3):($3/1e-2) w lp ti '{/Symbol h} bef', "008-twiss.all5" u ($2/1e3):($6/1e5) w lp ti '{/Symbol b}'; 
#plot "datos.dat" u ($1):(($3**2-$2**2)*1e-12):(2*4.47e-15/2.0*($2**2+$3**2)) with yerrorbars ti "Placet", "" u ($6-$5):4 w lp ti "SigmaBends2"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12):(2*(1.0/sqrt(50000))*1e-12*($2**2+$3**2)) with yerrorbars ti "Placet", "" u 1:5 w lp ti "SigmaBends2", "" u 1:6 w p ti "Math"
#plot "datos_Ldrift.dat" u 1:(($3**2-$2**2)*1e-12)/$5:(2*(1.0/sqrt(50000))*1e-12*($2**2+$3**2)/$5) with yerrorbars ti "Tracking (PLACET)";
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12) w lp ti "Placet", "" u 1:4 w lp ti "SigmaBends2"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12) w lp ti "Placet", "" u 1:4 w lp ti "SigmaBends2"
#set output "im08.eps"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12/$6):(2*($3**2+$2**2)*1e-12/$6)*(1.0/sqrt(50000)) with yerrorbars ti "Placet/SigmaBends"
