FROM live360vn/asterisk:18.13.0

# COPY ./etc/cert /etc/cert
COPY startup.sh startup.sh
RUN chmod +x startup.sh

COPY ./etc/asterisk/pjsip_wizard.conf /etc/asterisk/pjsip_wizard.conf
COPY ./etc/asterisk/extensions.conf /etc/asterisk/extensions.conf
COPY ./etc/asterisk/pjsip.conf /etc/asterisk/pjsip.conf
COPY ./etc/asterisk/features.conf /etc/asterisk/features.conf
COPY ./etc/asterisk/sip.conf /etc/asterisk/sip.conf
COPY ./etc/asterisk/rtp.conf /etc/asterisk/rtp.conf
COPY ./etc/asterisk/modules.conf /etc/modules.conf

RUN mkdir /etc/recorded
# RUN chown asterisk:asterisk -R /etc/asterisk
RUN sed -i "s/113.190.233.117/103.69.193.142/g" /etc/asterisk/pjsip.conf

CMD ./startup.sh
