#!/bin/bash

mkdir tempdir
mkdir tempdir/templates
mkdir tempdir/static

cp sample_app.py tempdir/.
cp -r templates/* tempdir/templates/.
cp -r static/* tempdir/static/.

echo "FROM python" >> tempdir/Dockerfile
echo "RUN pip install flask" >> tempdir/Dockerfile
echo "COPY  ./static /home/myapp/static/" >> tempdir/Dockerfile
echo "COPY  ./templates /home/myapp/templates/" >> tempdir/Dockerfile
echo "COPY  sample_app.py /home/myapp/" >> tempdir/Dockerfile
<<<<<<< HEAD
echo "EXPOSE 8080" >> tempdir/Dockerfile
=======
echo "EXPOSE 5050" >> tempdir/Dockerfile
>>>>>>> 9b739285fa49888b7ada47036990fd64a82b223f
echo "CMD python /home/myapp/sample_app.py" >> tempdir/Dockerfile

cd tempdir
docker build -t sampleapp .
<<<<<<< HEAD
docker run -t -d -p 8080:8080 --name samplerunning sampleapp
=======
docker run -t -d -p 5050:5050 --name samplerunning sampleapp
>>>>>>> 9b739285fa49888b7ada47036990fd64a82b223f
docker ps -a 
