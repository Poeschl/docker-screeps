FROM debian:buster-slim

RUN apt-get update && apt-get -y --no-install-recommends install nodejs=10.15.2~dfsg-2 npm=5.8.0+ds6-4 python2=2.7.16-1 build-essential=12.6 &&\
	apt-get -y autoremove && apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /screeps

RUN npm install screeps@v4.0.3

RUN addgroup --gid 900 screeps
RUN adduser --system --uid 900 --gid 900 --shell /bin/sh --no-create-home --disabled-password screeps
RUN usermod -d /screeps screeps

VOLUME /screeps
EXPOSE 21025 21026

COPY entrypoint.sh /entrypoint.sh
CMD ["/entrypoint.sh"]