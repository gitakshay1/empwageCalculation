echo "Welcome to Employee Wage Computation Program"

isPartTime=1;
isFullTime=2;
titalSalary=0;
empRatePerHr=20;
numWorkingDays=20;

for (( day=1; day<=numWorkingDays; day++ ))
do
   empCheck=$((RANDOM%2));

	case $empCheck in
		1)
		echo "Employee is present";
		empHrs=8;
		;;

		2)
		echo "Employee is working as part time";
		empHrs=4;
		;;

		*)
		empHrs=0
		;;

	esac

	salary=$(($empHrs*$empRatePerHr));
	totalSalary=$(($totalSalary+$salary));
done

