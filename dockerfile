FROM debian

RUN apt update && apt install bash && apt install git -y && apt install build-essential -y && apt install gcc-multilib -y

WORKDIR /home/script/

RUN git clone https://github.com/IskandarovaKamila/sp3.git \
	&& cd sp3/ \
	&& gcc -fno-pie -no-pie 3laba.cpp -o lab3 -g -lstdc++

WORKDIR /home/script/sp3/
