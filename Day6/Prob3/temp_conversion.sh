#! /bin/bash -x

convert_CelsiustoFahreinheit()
{
	degF=$(echo "scale=2;((9/5) * $celsius) + 32" |bc)
	echo $degF
}

convert_FahreinheittoCelsius()
{
	degC=$(echo "scale=2;($fahreinheit-32)*(5/9)"|bc)
	echo $degC
}

read -p "Enter option: 1. Celsius to Fahreinheit
	      2. Fahreinheit to Celsius : " option

case $option in
	1)
		read -p "Enter the temperature range within 0'C to 100'C: " celsius
		if (($celsius >= 0 && $celsius <= 100));
		then 
			convert_CelsiustoFahreinheit "$celsius"
		else
			echo "Temperature range extended!"
		fi
	;;
	2)
		read -p "Enter the temperature range within 32'F to 212'F: " fahreinheit
		if (($fahreinheit >= 32 && $fahreinheit <= 212));
		then 
			convert_FahreinheittoCelsius "$fahreinheit"
		else
			echo "Temperature range extended!"
		fi
	;;
	*)
		echo "Wrong option!"
	;;
esac



