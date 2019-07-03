gfortran -c ckinterp.f

gfortran -o ckinterpe ckinterp.o

cp KUCRS_iC7_chem.inp fort.15

./ckinterpe

rm fort.15

mv fort.16 ckout





