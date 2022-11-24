echo "cantidad de registros de cada peptido" > cancer.txt
cut -d "," -f 3 ../data/cancermine.csv | sort | uniq -c >> cancer.txt
echo "cantidad de registro del termino carcinoma" > carcinoma.txt
cut -d "," -f 3 ../data/cancermine.csv | sort | grep -w "carcinoma" | uniq -c >> carcinoma.txt
