
javac $2.java
java $2

echo "compiling..."
gcc -c $1.c

echo "linking..."
gcc -o $1.out $1.o

echo "executing.."
./$1.out

~/./mysql.sh << JACKYSHROFF
   use mysql
   select * from mydept3
JACKYSHROFF

echo "End of the script"

