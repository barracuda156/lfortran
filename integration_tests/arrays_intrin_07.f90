module min_three_args
    implicit none
contains
    subroutine take_min(arr)
        real(8), intent(out) :: arr(:,:)
        real(8) :: tmp1, tmp2
        tmp1 = huge(1.d0)
        tmp2 = huge(1.d0)
        arr(:,1) = min( 0.d0,tmp1,tmp2 )

        if (arr(1, 1) /= 0.d0) error stop
        if (size(arr) /= 2) error stop

    end subroutine take_min
end module min_three_args
program name
    use min_three_args
    implicit none
    real(8) :: arr(1, 2)
    call take_min(arr)
end program name
