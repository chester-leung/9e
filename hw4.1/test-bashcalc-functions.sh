echo "TESTING 5+5"
result=$(bashcalc 5+5)
if [ $result == 10 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING -5+5"
result=$(bashcalc -5+5)
if [ $result == 0 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING 5*5"
result=$(bashcalc 5*5)
if [ $result == 25 ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING 5/5"
result=$(bashcalc 5/5)
if [ $result == "1.00000000000000000000" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING sine (3.14159*0.25)"
result=$(bashcalc "s(3.14159*0.25)")
if [ $result == ".70710631209355760535" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

echo "TESTING cosine (3.14159*0.25)"
result=$(bashcalc "c(3.14159*0.25)")
if [ $result == ".70710725027922624845" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING env sine"
result=$(sine "3.14159*0.25")
if [ $result == ".70710631209355760535" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

result=$(sine "3.14159")
if [ $result == ".00000265358979323534" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

result=$(sine "-3.14159")
if [ $result == "-.00000265358979323534" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

result=$(sine "0")
if [ $result == "0" ]
then
	echo "TEST CASE PASSED"
else
	echo "FAILED: returned $result"
fi

echo "TESTING env cosine"
result=$(cosine "3.14159*0.25")
if [ $result == ".70710725027922624845" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi


result=$(cosine "0")
if [ $result == "1.00000000000000000000" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING env angle_reduce "
result=$(angle_reduce "8*a(1)")
if [ $result == "6.28318530717958647688" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(angle_reduce "4*a(1)")
if [ $result == "3.14159265358979323844" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi


result=$(angle_reduce "12*a(1)")
if [ $result == "9.42477796076937971532" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(angle_reduce "-4*a(1)")
if [ $result == "-3.14159265358979323844" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(angle_reduce "0*a(1)")
if [ $result == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

echo "TESTING float_lt/lte/eq"
result=$(float_lt 1 1.01)
if [ "$?" == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_lt -1 1.01)
if [ "$?" == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_lt 1 -1.01)
if [ "$?" == "1" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_eq 1.01 1.01)
if [ "$?" == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_eq -1 -1.01)
if [ "$?" == "1" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_lte -1 -0.01)
if [ "$?" == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_lte 1 1)
if [ "$?" == "0" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi

result=$(float_lte 1 -1.01)
if [ "$?" == "1" ]
then
        echo "TEST CASE PASSED"
else
        echo "FAILED: returned $result"
fi
