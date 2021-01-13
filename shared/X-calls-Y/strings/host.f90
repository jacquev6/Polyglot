program host
  implicit none

  interface
    function wrapper(host)
      implicit none

      character(len=*) :: host
      character(len=:), allocatable :: wrapper
    end function wrapper
  end interface

  write(*,'(a,a,a)') "Guest said: <<", wrapper("Fortran"), ">>"
  write(*,'(a,a,a)') "Guest said: <<", wrapper("Fortran again"), ">>"
end program host
