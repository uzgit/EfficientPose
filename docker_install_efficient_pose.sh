# efficientpose
echo "Installing EfficientPose..."

echo "Installing tensorflow-gpu==1.15.0"
conda install -y tensorflow-gpu==1.15.0

echo "Installing from requirements.txt..."
yes | pip install -r requirements.txt

echo "Building..."
python setup.py build_ext --inplace

# notify
echo "Done!"
