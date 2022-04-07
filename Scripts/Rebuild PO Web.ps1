cd..
docker stop totalPriceWEBPO
docker rm totalPriceWEBPO
docker build -t poapi PO/WEB/.
cd PO
docker-compose up --detach
