cd..
docker stop totalPriceAPIpo
docker stop mssqlpo
docker rm mssqlpo
docker rm totalPriceAPIpo
docker build -t poapi PO/total-price-api/.
cd PO
docker-compose up --detach
