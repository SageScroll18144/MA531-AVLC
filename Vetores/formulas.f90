program formulas
implicit none

real, dimension(4) :: vector
integer::a=100
vector = 2

write(*,*) get_norma(vector)
call print_vet

contains 
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
	
	subroutine print_vet
	implicit none
		integer :: i
		do i=1,size(vector)
			write(*,*) vector(i)
		end do
		
	end subroutine print_vet
	
end program
