#!/bin/bash
# Bash Calculator Framework
# CS9E - Assignment 4.1
#
# Framework by Jeremy Huddleston <jeremyhu@cs.berkeley.edu>
# $LastChangedDate: 2007-10-11 15:49:54 -0700 (Thu, 11 Oct 2007) $
# $Id: bashcalc-fw.sh 88 2007-10-11 22:49:54Z selfpace $

## Floating Point Math Functions ##

# bashcalc <expression>
# This function simply passes in the given expressions to 'bc -l' and prints the result
function bashcalc {
	echo $1 > expression
	echo "quit" >> expression
	bc -l expression | tail -n 1
#	rm -f expression
}

# sine <expression>
# This function prints the cosine of the given expression
function sine {
	expr="s($1)"
	bashcalc $expr
}


# cosine <expression>
# This function prints the cosine of the given expression
function cosine {
	expr="c($1)"
        bashcalc $expr
}

# angle_reduce <angle>
# Prints the angle given expressed as a value between 0 and 2pi
function angle_reduce {
	result=$(bashcalc $1)
       	expr="$result - ($result/6.283185307179586) * 6.283185307179586"
	bashcalc $expr
}

# float_{lt,lte,eq} <expr 1> <expr 2>
# These functions returns true (exit code 0) if the first value is less than the second (lt),
# less than or equal to the second (lte), or equal to the second (eq).
# Note: We can't just use BASH's builtin [[ ... < ... ]] operator because that is
#       for integer math.
function float_lt {
	expr="$1<$2"
	result=$(bashcalc $expr)
	if [ $result == 1 ] 
	then
		return "0"
	else
		return "1"
	fi
}


function float_eq {
	expr="$1==$2"
        result=$(bashcalc $expr)
        if [ $result == 1 ]
        then
                return "0"
       	else
		return "1"
	fi
        
}


function float_lte {
	expr="$1<=$2"
        result=$(bashcalc $expr)
        if [ $result == 1 ]
        then
                return "0"
 	else
		return "1"
        fi
}
