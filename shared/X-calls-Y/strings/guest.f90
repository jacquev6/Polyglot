function guest(host)
  implicit none

  character(len=*) :: host
  character(len=len(host) + 21) :: guest

  write (guest, '(a,a,a)') "Hello, ", host, ", I'm Fortran!"
end function guest
