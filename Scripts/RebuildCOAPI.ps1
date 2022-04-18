cd..
docker stop totalPriceAPIco
docker stop mssqlco
docker rm mssqlco
docker rm totalPriceAPIco
docker build -t poapi CO/total-price-api/.
cd CO
docker-compose up --detach
