FROM    alpine:3.14

RUN     apk --no-cache add --update bash sudo nano sudo zip bzip2 fontconfig wget curl 'su-exec>=0.2' busybox mc nano rsync lftp mysql-client bash sudo grep gawk ncurses-terminfo curl sed
RUN	deluser xfs && delgroup www-data &&  addgroup -g 33 -S www-data
RUN	adduser -u 33 -D -S -h /var/www -G www-data www-data 
RUN	mkdir -p /var/www && chown www-data:www-data /var/www && mkdir /mnt/nfs
ENTRYPOINT ["/bin/busybox" "sleep" "365d"]

