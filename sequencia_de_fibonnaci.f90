program g 
implicit none 
integer x,y,z
x=0
y=1
open(98,file='Resultado.dat', status='unknown')
write(*,*) x
write(98,*) x
777 continue
z=x+y
x=z+y
y=x+z
write(98,*)z
write(98,*)x
write(98,*)y
write(*,*)z
write(*,*)x
write(*,*)y
if(y<1000000000) goto 777
end program g