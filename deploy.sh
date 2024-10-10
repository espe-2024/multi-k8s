docker build -t espe1992/multi-client:latest -t espe1992/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t espe1992/multi-server:latest -t espe1992/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t espe1992/multi-worker:latest -t espe1992/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push espe1992/mutil-client:latest
docker push espe1992/multi-server:latest
docker push espe1992/multi-worker:latest

docker push espe1992/mutil-client:$SHA
docker push espe1992/multi-server:$SHA
docker push espe1992/multi-worker:$SHA