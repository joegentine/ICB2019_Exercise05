
echo "gender/experience" 
cat wages.csv | cut -d, -f 1,2 | tr "," " " >new_wages.txt
echo "Highest earner"
cat wages.csv | sort -t , -k 4 -g | tail -n 1
echo "Lowest earner"
cat wages.csv | sort -t , -k 4 -g | head -n 2 | tail -n 1
echo "Females in top 10 earners"
cat wages.csv | sort -t , -k 4 -g | tail -n 10 | grep "female" | wc -l
