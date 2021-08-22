#! /bin/bash 

Maximum_days=20;
ran1=$(( RANDOM%9 )); #RANDOM HOURS/day
echo "ran1: "$ran1;
Wage_per_hour=20;
ran2=$(( RANDOM%21 )); #RANDOM DAYS
echo "ran2: "$ran2;
if [[ ran2 -eq 0 ]]
then
	ran1=0;
fi
working_hours=$(( $ran2 * $ran1 ));
echo "Total working hours in a month: "$working_hours;
if [[ working_hours -le 100 || ran2 -le days ]]
then
       echo "Person worked for" $ran2" days and "$ran1" hours/day in a month";
       Monthly_wage=$(( $Wage_per_hour * $working_hours ));
else
   echo "Monthly condition Exceeded";
   exit;
fi
echo $Monthly_wage;
