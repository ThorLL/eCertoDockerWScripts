cd..
echo "Pasting dockerignore files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\CO\API" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\CO\WEB" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\PO\API" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\.dockerignore" -Destination "$pwd\PO\WEB" -Recurse
echo "Pasting docker-compose files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\docker-compose.yml" -Destination "$pwd\PO" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\docker-compose.yml" -Destination "$pwd\CO" -Recurse
echo "Pasting Dockerfile"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\api\Dockerfile" -Destination "$pwd\co\api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\api\Dockerfile" -Destination "$pwd\po\api" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\web\Dockerfile" -Destination "$pwd\co\web" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\web\Dockerfile" -Destination "$pwd\po\web" -Recurse
echo "Overwriting .json files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\api\*.json" -Destination "$pwd\co\api\totalprice" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\api\*.json" -Destination "$pwd\po\api\totalprice" -Recurse
echo "Overwriting .env.local files"
Copy-Item -Path "$pwd\Scripts\Pathingfiles\co\web\.env.local" -Destination "$pwd\co\web" -Recurse
Copy-Item -Path "$pwd\Scripts\Pathingfiles\po\web\.env.local" -Destination "$pwd\po\web" -Recurse
echo "Building images"
docker build -t poapi PO/API/.
docker build -t poweb PO/WEB/.
docker build -t coapi CO/API/.
docker build -t coweb CO/WEB/.
echo "Composing CO"
cd CO
docker-compose up --detach
cd ..
cd PO
docker-compose up --detach
echo "Waiting for containers to be ready"
for ($i=20;$i-gt0;$i--){
	echo "Ready in $i"
	Start-Sleep -s 1
}
Start-Process -FilePath http://localhost:8080
Start-Process -FilePath http://localhost:5077
Start-Process -FilePath http://localhost:8081
Start-Process -FilePath http://localhost:5078

