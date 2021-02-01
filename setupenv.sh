sudo apt update
sudo apt --assume-yes install ffmpeg python3-venv
git clone https://github.com/Stanley-Adams/first-order-model

python3 -m venv venvgen
source venvgen/binary/activate
python -m pip install -r requirements-latest.txt

git clone https://github.com/chentinghao/download_google_drive.git
FILEID="1L8P-hpBhZi8Q_1vP2KlQ4N6dvlzpYBvZ"
FILEPATH="images/vox-adv-cpk.pth.tar"
python download_google_drive/download_gdrive.py $FILEID $FILEPATH

CUDA_REPO_PKG=cuda-repo-ubuntu1604_10.0.130-1_amd64.deb

wget -O /tmp/${CUDA_REPO_PKG} https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/${CUDA_REPO_PKG} 

sudo dpkg -i /tmp/${CUDA_REPO_PKG}

sudo apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/7fa2af80.pub 

rm -f /tmp/${CUDA_REPO_PKG}

sudo apt-get update

sudo apt-get --assume-yes install cuda-drivers

chmod+