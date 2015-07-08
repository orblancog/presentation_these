set terminal postscript enhanced landscape color "Times-Roman,30" linewidth 3;

set output "betamin.eps";
#! pdfto pdf
# beta 
set xrange [0.1:2];
p sqrt(x+110/(3*sqrt(3.1416))/x)

