cd..
docker stop totalPriceWEBpo
docker rm totalPriceWEBpo
docker build -t poapi PO/total-price-web/.
cd PO
docker-compose up --detach
