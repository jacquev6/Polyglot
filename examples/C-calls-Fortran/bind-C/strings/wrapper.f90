subroutine wrapper(buffer, host_c) bind(C)
  use ISO_C_BINDING
  implicit none

  include "guest.f90i"
  include "strlen.f90i"

  character(kind=c_char), dimension(*) :: buffer
  character(kind=c_char), dimension(*) :: host_c

  character(len=strlen(host_c)) :: host_f
  character(:), allocatable :: greetings

  integer :: i

  host_f = transfer(host_c(:len(host_f)), host_f)

  greetings = guest(host_f)

  do i=1, len(host_f) + 21
    buffer(i) = greetings(i:i+1)
  end do
  buffer(len(host_f) + 22) = c_null_char

  deallocate(greetings)
end subroutine wrapper
