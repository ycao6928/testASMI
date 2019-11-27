#!/bin/bash
sudo groupadd trainees

for((userIndex = 1; userIndex <= 50; userIndex++))
  do
{
  userID=user${userIndex}
  sudo useradd -g trainees -d /home/$userID -m -s /bin/bash $userID
  echo $userID:BIS2019{userIndex} | sudo chpasswd
}
done