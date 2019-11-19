program first
implicit none

  real alpha, beta, gamm
  character(len = 40) :: tmpstr
  character(len = 40) :: substr
  integer :: ios, i = 0, ind = 0

  open(1, file='Data.ini', status='old', action='read')

  do i = 1,3
    read(1, '(A)', iostat=ios) tmpstr
    if (ios /= 0) stop "Error while reading Data.ini file"
    print *, tmpstr

    ind = index(tmpstr, "alpha")
    if (ind /= 0) then
      substr = tmpstr(1:ind - 4)
      read(substr , *) alpha
      read(substr, '(i10)' ) alpha
    end if
  end do

  print *, alpha, beta, gamm, substr
end program first
