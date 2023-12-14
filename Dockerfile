FROM live360vn/asterisk:18.20.0

# COPY ./etc/cert /etc/cert
COPY startup.sh startup.sh
RUN chmod +x startup.sh

RUN rm -rf /etc/asterisk
	COPY ./etc/asterisk /etc/asterisk

RUN mkdir /etc/recorded
# RUN chown asterisk:asterisk -R /etc/asterisk
RUN sed -i "s/113.190.233.117/103.69.193.142/g" /etc/asterisk/pjsip.conf

CMD ./startup.sh
