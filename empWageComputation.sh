echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFulltime=2;
totalSalary=0;
totalWorkingHours=0;
empRatePerHr=20;
numWorkingDays=20;
day=1;

while [[ $day -le 20 && $totalWorkingHours -lt 100 ]]
do
randomCheck=$((RANDOM%3));

case $randomCheck in $isFullTime)
empHrs=8;;
$isPartTime)
empHrs=4;;
*)
empHrs=0;;
esac

totalWorkingHours=$(($totalWorkingHours+$empHrs))

if [ $totalWorkingHours -gt 100 ]
then
totalWorkingHours=$(($totalWorkingHours-$empHrs))
break;
fi
salary=$(($empRatePerHr*$empHrs))
totalSalary=$(($totalSalary+$salary))
((day++))
done

echo "employee has earned $totalSalary $ in a month (Total working Hours : $totalWorkingHours)";


