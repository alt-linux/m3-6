apt-get install rsyslog tree -y
rm -rf /etc/rsyslog.d/00_common.conf
cp /down/00_common.confhq-srv /etc/rsyslog.d/00_common.conf
systemctl enable --now rsyslog
echo "mkdir -p /opt/br-rtr"
echo "mkdir -p /opt/hq-rtr"
echo "mkdir -p /opt/br-srv"
rm -rf /etc/logrotate.conf
cp /down/logrotate.conf1 /etc/logrotate.conf
systemctl enable --now logrotate
echo "Proverka=logrotate -d /etc/logrotate.conf"
echo "Proverka=tree /opt/"