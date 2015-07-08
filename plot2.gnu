set terminal postscript enhanced landscape color "Helvetica,30" linewidth 3 
set output "sigma_Lbend.eps"
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
set mytics;
set xrange [0.9:150];
set yrange [0.8:1.1];
#set format x "10^{%L}";
#set xlabel '{/Symbol Q} [rad]';
set xlabel 'L [m]';
#set ylabel '{/Symbol s^2} rad/{/Symbol s^2} theo';
#set ylabel '{/Symbol s^2} bends [m{/Symbol ^2}]';
set log x;
#plot "datos.dat" u ($1):(($3**2-$2**2)*1e-12):(2*4.47e-15/2.0*($2**2+$3**2)) with yerrorbars ti "Placet", "" u ($6-$5):4 w lp ti "SigmaBends2"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12):(2*(1.0/sqrt(50000))*1e-12*($2**2+$3**2)) with yerrorbars ti "Placet", "" u 1:5 w lp ti "SigmaBends2", "" u 1:6 w p ti "Math"
plot "datos_Lbend.dat" u 1:(($3**2-$2**2)*1e-12)/$7:(2*(1.0/sqrt(50000))*1e-12*($2**2+$3**2)/$7) with yerrorbars ti "Tracking (PLACET)", "" u 1:($5/$7) w lp ti "Approx. (MAPCLASS2)"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12) w lp ti "Placet", "" u 1:4 w lp ti "SigmaBends2"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12) w lp ti "Placet", "" u 1:4 w lp ti "SigmaBends2"
#set output "im08.eps"
#plot "datos.dat" u 1:(($3**2-$2**2)*1e-12/$6):(2*($3**2+$2**2)*1e-12/$6)*(1.0/sqrt(50000)) with yerrorbars ti "Placet/SigmaBends"
