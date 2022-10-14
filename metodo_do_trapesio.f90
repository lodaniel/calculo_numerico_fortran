program integracao
implicit none
integer n,i
real*8::a,b,h,rsl,y,x,f,fa,fb,x1,x0
real*8,dimension(101)::alm
write(*,*)'Entre com o intervalo de integracao:'
read(*,*)a,b
x0=a ; x1=b
write(*,*)'Entre com o valor da particao:'
read(*,*)n
h=abs((b-a)/n) !passo de integracao
y=0
do i=1,n-1
a=a+h
call int(a,f)
y=y+f
end do
call int(x0,fa)
call int(x1,fb)
rsl=(h*(fa+fb)/2)+y
123 format(A,ES15.5,A,ES15.5,A,ES15.5,A)
write(*,123)'A integral de ',x0,' ateh',x1,'eh',rsl,'.'
end program integracao
subroutine int(x,f)
real(8),intent(in)::x
real(8),intent(out)::f 
f=3*x**2
return
end subroutine
