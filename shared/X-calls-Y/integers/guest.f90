function guest(a, b)
    implicit none

    integer, intent(in) :: a
    integer, intent(in) :: b
    integer :: guest

    guest = 2 * a + b
end function guest
