!Demo of simple Fizzbuzz
!For simplicity I have not formatted the
!print statements, so the output is not pretty
!but it does work

PROGRAM FIZZBUZZ

IMPLICIT NONE

INTEGER:: i=0

DO i=1, 100
  IF(MOD(i, 3) .EQ. 0 .AND. MOD(i, 5) .NE. 0) PRINT*, "Fizz"
  IF(MOD(i, 5) .EQ. 0 .AND. MOD(i, 3) .NE. 0) PRINT*, "Buzz"
  IF(MOD(i, 15) .EQ. 0) PRINT*, "FizzBuzz"
  IF(MOD(i, 3) .NE. 0 .AND. MOD(i, 5) .NE. 0) PRINT*, i

ENDDO

END PROGRAM
