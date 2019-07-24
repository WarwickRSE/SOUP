PROGRAM FIZZBUZZ

INTEGER:: i, i3=1, i5=1
CHARACTER(len=8):: output

DO i=1, 1000000
  output=""
  IF(i3 .EQ. 3) THEN
    output="Fizz"
    i3=0
  ENDIF
  IF(i5 .EQ. 5) THEN
    output =trim(output(1:4))//"Buzz"
    i5=0
  ENDIF
  IF(output .EQ. "") WRITE(output, '(I8)') i
  PRINT*, adjustl(output)
  i3 = i3+1
  i5 = i5+1

ENDDO

END PROGRAM
