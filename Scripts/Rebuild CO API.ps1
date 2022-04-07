cd..
docker stop totalPriceAPICO
docker stop mssqlCO
docker rm mssqlCO
docker rm totalPriceAPICO
docker build -t poapi CO/total-price-api/.
cd CO
docker-compose up --detach
