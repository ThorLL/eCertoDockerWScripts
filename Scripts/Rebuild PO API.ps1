cd..
docker stop totalPriceAPIPO
docker stop mssqlPO
docker rm mssqlPO
docker rm totalPriceAPIPO
docker build -t poapi PO/API/.
cd PO
docker-compose up --detach
