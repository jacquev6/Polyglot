program host
    implicit none

    integer :: wrapper

    write(*,'(a,i2)') "Guest returned: ", wrapper(16, 10)
end program host
