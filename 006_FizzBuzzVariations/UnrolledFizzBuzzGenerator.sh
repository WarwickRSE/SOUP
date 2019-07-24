#/bin/bash
#input=100
#Create a script to print FizzBuzz for any number of lines up
# to 100 (change end to increase upper limit)
# without using 'if'
# Assumes always 3 and 5
# Creates a temporary script called runable and runable2

COUNTER=0

let end=100/15+1
echo '#/bin/bash' &>runable.sh
echo 'let i=1' >> runable.sh
while [ $COUNTER -lt $end ]; do
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >>runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo fizz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo buzz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo fizz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo fizz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo buzz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh  
  echo 'echo fizz' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh 
  echo 'echo $i' >> runable.sh
  echo 'let i=i+1' >> runable.sh
  echo 'echo fizzbuzz' >> runable.sh
  echo 'let i=i+1' >> runable.sh  
  let COUNTER=COUNTER+1
done

let num_lines=input*2+1
head -$num_lines runable.sh &> runable2.sh
mv runable2.sh runable.sh
chmod u+x runable.sh
./runable.sh
