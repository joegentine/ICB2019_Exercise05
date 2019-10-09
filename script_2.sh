
echo "gender/experience data sent to file new_wages.txt" 
cat wages.csv | cut -d, -f 1,2 | tr "," " " >new_wages.txt
echo "--"
echo "--"
echo "--"
echo "Highest earner"
echo "--"
echo "Gender:"
cat wages.csv | sort -t , -k 4 -g | tail -n 1 | cut -d , -f 1
echo "Years Experience:"
cat wages.csv | sort -t , -k 4 -g | tail -n 1 | cut -d , -f 2
echo "Wage:"
cat wages.csv | sort -t , -k 4 -g | tail -n 1 | cut -d , -f 4
echo "--"
echo "--"
echo "--"
echo "Lowest earner"
echo "--"
echo "Gender:"
cat wages.csv | sort -t , -k 4 -g | head -n 2 | tail -n 1 | cut -d , -f 1
echo "Years Experience:"
cat wages.csv | sort -t , -k 4 -g | head -n 2 | tail -n 1 | cut -d , -f 2
echo "Wage:"
cat wages.csv | sort -t , -k 4 -g | head -n 2 | tail -n 1 | cut -d , -f 4
echo "--"
echo "--"
echo "--"
echo "Females in top 10 earners:"
cat wages.csv | sort -t , -k 4 -g | tail -n 10 | grep "female" | wc -l
echo "--"
echo "--"
echo "--"
#min wage for 16-yr school. set as "a"
a=$(cat wages.csv | egrep "[a-z]+\,[0-9]+\,16" | sort -t , -k 4 -g | tail -n 1 | cut -d , -f 4)
#min wage for 12-yr school. set as "b"
b=$(cat wages.csv | egrep "[a-z]+\,[0-9]+\,12" | sort -t , -k 4 -g | tail -n 1 | cut -d , -f 4)
echo "Difference between minimum wage for individuals with 12-yr and 16-yr education:"
echo "$b-$a" | bc
