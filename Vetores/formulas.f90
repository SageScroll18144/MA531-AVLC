program formulas
implicit none

real, dimension(2) :: vector
real, dimension(2) :: vector1
integer::a=100
vector(1) = 1
vector(2) = 0
vector1(1) = 0
vector1(2) = 1

write(*,*) get_norma(vector), get_cos(vector, vector1)
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
	!-------------------------------------------------
	real function get_cos(u, v)
	implicit none
		real, dimension(:) :: u
		real, dimension(:) :: v
		
		get_cos = scale_product(u, v)/(get_norma(u)*get_norma(v))	
	end function get_cos
	
end program
