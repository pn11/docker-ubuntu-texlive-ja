#!/usr/bin/env perl

$ENV{'TEXINPUTS'} = './styles//:' . $ENV{'TEXINPUTS'};
$ENV{'BIBINPUTS'} = './styles//:' . $ENV{'BIBINPUTS'};
$ENV{'BSTINPUTS'} = './styles//:' . $ENV{'BSTINPUTS'};

$latex                         = 'uplatex %O -synctex=1 -interaction=nonstopmode %S';
$pdflatex                      = 'pdflatex %O -synctex=1 -interaction=nonstopmode %S';
$lualatex                      = 'lualatex %O -synctex=1 -interaction=nonstopmode %S';
$xelatex                       = 'xelatex %O -no-pdf -synctex=1 -shell-escape -interaction=nonstopmode %S';
$biber                         = 'biber %O --bblencoding=utf8 -u -U --output_safechars %B';
$bibtex                        = 'upbibtex %O %B';
$makeindex                     = 'upmendex %O -o %D %S';
$dvipdf                        = 'dvipdfmx %O -o %D %S';
$dvips                         = 'dvips %O -z -f %S | convbkmk -u > %D';
$ps2pdf                        = 'ps2pdf %O %S %D';
$pdf_mode                      = 3;
$pdf_previewer               = 'xdg-open';
