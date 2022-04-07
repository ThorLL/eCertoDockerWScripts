cd..
docker stop totalPriceAPICO
docker stop mssqlCO
docker rm mssqlCO
docker rm totalPriceAPICO
docker build -t poapi CO/API/.
cd CO
docker-compose up --detach
