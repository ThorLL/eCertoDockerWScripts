cd..
docker stop totalPriceWEBco
docker rm totalPriceWEBco
docker build -t poapi CO/total-price-web/.
cd CO
docker-compose up --detach