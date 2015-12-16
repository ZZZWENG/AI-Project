#!/bin/bash                                                                     
# bash trap command                                                             
trap bashtrap INT
clear;
# bash clear screen command                                                     
# bash trap function is executed when CTRL-C is pressed:                        
# bash prints message => Executing bash trap subrutine !                        
bashtrap()
{
    echo "CTRL+C Detected !...executing bash trap !"
}
# for loop from 1/10 to 10/10                                                   
for a in `seq 1 3`; do
    java -cp bin com.theaigames.blockbattle.Blockbattle "python ../BotRun.py" "python ../../../AI-Project-Random/blockbattle-starterbot-python/BotRun.py" 2>err${a}.txt 1>out${a}.txt 
    echo $a
    sleep 5;
done
echo "Exit Bash Trap Example!!!"