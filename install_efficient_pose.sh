# efficientpose
echo "Installing EfficientPose..."
conda create -n -y EfficientPose python==3.7
conda activate EfficientPose
conda install -y tensorflow-gpu==1.15.0
yes | pip install -r requirements.txt
python setup.py build_ext --inplace

# notify
echo "Done!"
