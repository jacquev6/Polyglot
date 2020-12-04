function wrapper(a, b)
    implicit none

    integer, intent(in) :: a
    integer, intent(in) :: b
    integer :: wrapper

    interface
        function guest(a, b) bind(C)
            integer, intent(in), value :: a
            integer, intent(in), value :: b
            integer :: guest
        end function guest
    end interface

    wrapper = guest(a, b)
end function wrapper
