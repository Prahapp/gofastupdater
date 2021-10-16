echo "Host *" > ~/.ssh/config     
echo " StrictHostKeyChecking no" >> ~/.ssh/config
rm -rf /root/.ssh/gofastupdate-github
rm -rf /etc/gofastupdate
wget -O /root/.ssh/gofastupdate-github https://tr.gofasthost.com/library/gofastupdate-github
chmod 600 /root/.ssh/gofastupdate-github
ssh-agent bash -c "ssh-add ~/.ssh/gofastupdate-github; git clone -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no git@github.com:gofasthost/gofastupdate.git /etc/gofastupdate"
git remote add origin git@github.com:gofasthost/gofastupdate.git
chmod +x /etc/gofastupdate -R
/etc/gofastupdate/gofastupdate.sh


