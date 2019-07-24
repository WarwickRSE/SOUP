
! In this example we construct a string to minimise
! the duplication. We also format things properly
PROGRAM FIZZBUZZ

INTEGER:: i
CHARACTER(len=8):: output

DO i=1, 1000000
  output=""
  IF(MOD(i, 3) .EQ. 0) output="Fizz"
  IF(MOD(i, 5) .EQ. 0) output =trim(output(1:4))//"Buzz"
  IF(output .EQ. "") WRITE(output, '(I8)') i
  PRINT*, adjustl(output)
ENDDO

END PROGRAM
