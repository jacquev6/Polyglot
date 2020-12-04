subroutine wrapper()
    implicit none

    interface
        subroutine guest() bind(C)
        end subroutine guest
    end interface

    call guest()
end subroutine wrapper
