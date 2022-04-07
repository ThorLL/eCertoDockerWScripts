cd..
docker stop totalPriceWEBPO
docker rm totalPriceWEBPO
docker build -t poapi PO/total-price-web/.
cd PO
docker-compose up --detach
