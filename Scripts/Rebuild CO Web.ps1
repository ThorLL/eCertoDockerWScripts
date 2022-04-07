cd..
docker stop totalPriceWEBCO
docker rm totalPriceWEBCO
docker build -t poapi CO/WEB/.
cd CO
docker-compose up --detach