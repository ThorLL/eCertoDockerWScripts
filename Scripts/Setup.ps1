cd..
echo "Pasting dockerignore files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\CO\total-price-api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\CO\total-price-web" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\PO\total-price-api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\PO\total-price-web" -Recurse
echo "Pasting docker-compose files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\docker-compose.yml" -Destination "$pwd\PO" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\docker-compose.yml" -Destination "$pwd\CO" -Recurse
echo "Pasting Dockerfile"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\API\Dockerfile" -Destination "$pwd\co\total-price-api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\API\Dockerfile" -Destination "$pwd\po\total-price-api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\web\Dockerfile" -Destination "$pwd\co\total-price-web" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\web\Dockerfile" -Destination "$pwd\po\total-price-web" -Recurse
echo "Overwriting .json files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\api\*.json" -Destination "$pwd\co\total-price-api\totalprice" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\api\*.json" -Destination "$pwd\po\total-price-api\totalprice" -Recurse
echo "Overwriting .env.local files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\web\.env.local" -Destination "$pwd\co\total-price-web" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\web\.env.local" -Destination "$pwd\po\total-price-web" -Recurse
echo "Building images"
docker build -t poapi PO/total-price-api/.
docker build -t poweb PO/total-price-web/.
docker build -t coapi CO/total-price-api/.
docker build -t coweb CO/total-price-web/.
echo "Composing CO"
cd CO
docker-compose up --detach
cd ..
cd PO
docker-compose up --detach
echo "Waiting for containers to be ready"
for ($i=30;$i-gt0;$i--){
	echo "Ready in $i"
	Start-Sleep -s 1
}
Start-Process -FilePath http://localhost:8080
Start-Process -FilePath http://localhost:5077
Start-Process -FilePath http://localhost:8081
Start-Process -FilePath http://localhost:5078

