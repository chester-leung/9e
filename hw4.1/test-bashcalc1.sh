echo "TESTING 5+5"
result=$(./bashcalc-1.sh 5+5)
if [ $result == 10 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING -5+5"
result=$(./bashcalc-1.sh -5+5)
if [ $result == 0 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING 5*5"
result=$(./bashcalc-1.sh 5*5)
if [ $result == 25 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING 5/5"
result=$(./bashcalc-1.sh 5/5)
if [ $result == "1.00000000000000000000" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING sine (3.14159*0.25)"
result=$(./bashcalc-1.sh "s(3.14159*0.25)")
if [ $result == ".70710631209355760535" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

echo "TESTING cosine (3.14159*0.25)"
result=$(./bashcalc-1.sh "c(3.14159*0.25)")
if [ $result == ".70710725027922624845" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi
