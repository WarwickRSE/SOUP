

MODULE functions

  ABSTRACT INTERFACE
      SUBROUTINE pr (a)
         INTEGER, INTENT(IN) :: a
      END SUBROUTINE pr
  END INTERFACE

  !Use a type to hold the function pointer so we can have an array of them
  TYPE f_ptr
    PROCEDURE (pr), pointer, nopass :: ptr
  END TYPE f_ptr

  CONTAINS


  SUBROUTINE print_i(a)
    INTEGER, INTENT(IN) :: a
    PRINT*, a
  END SUBROUTINE

  SUBROUTINE print_fizz(a)
    INTEGER, INTENT(IN) :: a
    PRINT*, "fizz"
  END SUBROUTINE

  SUBROUTINE print_buzz(a)
    INTEGER, INTENT(IN) :: a
    PRINT*, "buzz"
  END SUBROUTINE

  SUBROUTINE print_fizzbuzz(a)
    INTEGER, INTENT(IN) :: a
    PRINT*, "fizzbuzz"
  END SUBROUTINE

END MODULE

PROGRAM main

  USE functions
  IMPLICIT NONE

  TYPE(f_ptr), DIMENSION(4) :: printers
  TYPE(f_ptr) :: printer
  INTEGER :: i, offset
  INTEGER, PARAMETER :: en = 100, fizz = 3, buzz = 5


  printers(1)%ptr => print_i
  printers(2)%ptr => print_fizz
  printers(3)%ptr => print_buzz
  printers(4)%ptr => print_fizzbuzz

  DO i = 1, en

    !Work out the offset we need
    ! We want '+1' if MOD(i, fizz) == 0
    ! and then '+2' if MOD(i, buzz) == 0
    ! In Fortran we can't manipulate logicals, so we use 'MIN'
    ! This looks horrible, and it is. This is bad cleverness. 

    offset =  MAX(0, 1+MIN(0, -MOD(i, fizz))) + &
        2 * MAX(0, 1+MIN(0, -MOD(i, buzz)))

    printer%ptr => printers(1+offset)%ptr
    CALL printer%ptr(i)

  END DO


END PROGRAM
