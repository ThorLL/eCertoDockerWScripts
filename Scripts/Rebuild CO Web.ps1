cd..
docker stop totalPriceWEBCO
docker rm totalPriceWEBCO
docker build -t poapi CO/total-price-web/.
cd CO
docker-compose up --detach