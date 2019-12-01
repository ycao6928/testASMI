#!/bin/bash
sudo groupadd trainees

for((userIndex = 1; userIndex <= 50; userIndex++))
  do
{
  userID=user${userIndex}
  sudo useradd -g trainees -d /home/$userID -m -s /bin/bash $userID
  sudo cp -r /home/gittmp/* /home/$userID/
  echo $userID:2019 | sudo chpasswd
}
done