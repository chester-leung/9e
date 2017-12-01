echo $1 > expression
echo "quit" >> expression
bc -l expression | tail -n 1
rm -f expression

