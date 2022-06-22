program formulas
implicit none

real, dimension(1) :: vector
real, dimension(1) :: vector1
integer::a=100
vector = 2
vector1 = 2

write(*,*) get_norma(vector), scale_product(vector, vector1)
call print_vet

contains 
	
	subroutine print_vet
	implicit none
		integer :: i
		do i=1,size(vector)
			write(*,*) vector(i)
		end do
		
	end subroutine print_vet
	!-------------------------------------------------
	real function get_norma(vet)
	implicit none
		real, dimension(:) :: vet
		integer :: i
		get_norma = 0
		
		do i=1,size(vet)
			get_norma = get_norma + vet(i)**2
		end do
		get_norma = sqrt(get_norma)
	end function get_norma
	!-------------------------------------------------
	real function scale_product(u, v)
	implicit none 
		real, dimension(:) :: u
		real, dimension(:) :: v
		
		integer :: i
		scale_product = 0
		if (size(u) == size(v)) then
			do i=1, size(u)
				scale_product = scale_product + u(i)*v(i)				
			enddo
		endif
	end function scale_product
end program
