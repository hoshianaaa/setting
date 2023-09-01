# http://wiki.ros.org/noetic/Installation/Ubuntu
sudo -A sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo -A apt install -y curl # if you haven't already installed curl
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo -A apt-key add -
sudo -A apt update
sudo -A apt install -y ros-noetic-desktop-full
echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo -A apt install -y python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential
sudo -A apt install -y python3-rosdep
sudo -A rosdep init
rosdep update

cd ~/
mkdir -p catkin_ws/src

# https://zenn.dev/suisuiso/articles/08177aacbffc7a

sudo -A apt install -y python3-osrf-pycommon python3-catkin-tools
sudo -A apt install -y build-essential

source /opt/ros/noetic/setup.bash
cd ~/catkin_ws
catkin build

# ros_template_creator
cd ~/
#git clone https://github.com/hoshianaaa/ros_template_creator.git
#git clone --recursive git@github.com:hoshianaaa/ros_template_creator.git

# 

sudo -A apt install ros-noetic-jsk-pcl-ros -y
sudo -A apt install ros-noetic-jsk-rviz-plugins -y

