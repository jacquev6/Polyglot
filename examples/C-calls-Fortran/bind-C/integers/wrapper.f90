! Use C passing conventions
function wrapper(a, b) bind(C)
    implicit none

    ! Receive arguments by value: https://stackoverflow.com/a/13424360/905845
    integer, intent(in), value :: a
    integer, intent(in), value :: b
    integer :: wrapper

    integer :: guest

    wrapper = guest(a, b)
end function wrapper
