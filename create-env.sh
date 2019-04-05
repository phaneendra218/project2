#!/bin/bash
cont_count=$1
echo "Creating $cont_count containers.."
sleep 2;
for i in `seq $cont_count`
do
        echo "======================================"
        echo "Creating phaneendraraju$i container.."
        sleep 2;
sudo docker run -it --name phaneendraraju$i -d --rm phaneendraraju/ubuntuimag /bin/bash
echo "phaneendraraju$i container has been created!"
echo "======================================"
done
