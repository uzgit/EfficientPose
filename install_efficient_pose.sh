# conda
echo "Installing Conda..."
MINICONDA_INSTALLER_SCRIPT=Miniconda3-4.5.4-Linux-x86_64.sh
MINICONDA_PREFIX=/usr/local
wget https://repo.continuum.io/miniconda/$MINICONDA_INSTALLER_SCRIPT
chmod +x $MINICONDA_INSTALLER_SCRIPT
./$MINICONDA_INSTALLER_SCRIPT -b -f -p $MINICONDA_PREFIX

# efficientpose
echo "Installing EfficientPose..."
git clone https://github.com/uzgit/EfficientPose
cd EfficientPose/
conda create -n -y EfficientPose python==3.7
conda activate EfficientPose
conda install -y tensorflow-gpu==1.15.0
yes | pip install -r requirements.txt
python setup.py build_ext --inplace

# get dataset
echo "Retrieving dataset..."
pip3 install gdown
gdown https://drive.google.com/uc?id=1BMHC9RFhNxqnKo06fVpHr9AGGe2S9zv-

# extract dataset
echo "Extracting dataset..."
unzip -q dataset.zip

# notify
echo "Done!"
