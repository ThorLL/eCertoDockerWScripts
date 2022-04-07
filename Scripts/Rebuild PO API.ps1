cd..
docker stop totalPriceAPIPO
docker stop mssqlPO
docker rm mssqlPO
docker rm totalPriceAPIPO
docker build -t poapi PO/total-price-api/.
cd PO
docker-compose up --detach
