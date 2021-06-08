#! /bin/bash -x

read -p "Enter the day and month: " day month
if (( ($month <= 6 && $day <= 20) && (($month >= 3 && $day <= 20) && ($day<31)) ))
then
        echo $month $day "True";
else

        echo "False";
fi



