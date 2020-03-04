#/bin/bash
Vivado/xsetup --agree 3rdPartyEULA,WebTalkTerms,XilinxEULA --batch Install --config install_config.txt
echo "source /opt/Xilinx/Vivado/2018.2/settings64.sh" >> /home/vagrant/.bashrc