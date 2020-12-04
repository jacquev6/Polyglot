subroutine wrapper() bind(C)
    implicit none

    call guest()
end subroutine wrapper
