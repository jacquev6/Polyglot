function wrapper(host_f)
  use ISO_C_BINDING
  implicit none

  include "strlen.f90i"

  interface
    function guest(buffer, host) bind(C)
      use ISO_C_BINDING
      implicit none

      character(kind=c_char), dimension(*) :: buffer
      character(kind=c_char), dimension(*) :: host
      integer(kind=c_int) :: guest
    end function guest
  end interface

  character(len=*) :: host_f
  character(len=:), allocatable :: wrapper

  character(kind=c_char), dimension(100) :: buffer
  character(kind=c_char, len=len(host_f) + 1) :: host_c

  integer :: l, i

  host_c = transfer(host_f, host_c)
  l = len(host_f)
  host_c(l+1:l+1) = c_null_char

  l = guest(buffer, host_c)
  allocate(character(len=l) :: wrapper)
  do i = 1, l
    wrapper(i:i) = buffer(i)
  end do
end function wrapper
