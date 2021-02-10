# efficientpose
echo "Installing EfficientPose..."

# conda
conda init bash
. ~/.bashrc

echo "Removing possibly existing EfficientPose environment..."
conda remove -n EfficientPose --all -y

echo "Creating new EfficientPose environment..."
conda create -n EfficientPose python==3.7 -y

echo "Activating EfficientPose environment..."
conda activate EfficientPose

echo "Installing tensorflow-gpu==1.15.0"
conda install -y tensorflow-gpu==1.15.0

echo "Installing from requirements.txt..."
yes | pip install -r requirements.txt

echo "Building..."
python setup.py build_ext --inplace

echo "Detecting GPUs..."
python detect_gpus.py

# notify
echo "Done!"
