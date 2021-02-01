sudo apt update
sudo apt --assume-yes install ffmpeg python3-venv

python3 -m venv venvgen
source venvgen/bin/activate
python -m pip install wheel
python -m pip install -r requirements-latest.txt

python -m pip install requests
git clone https://github.com/chentinghao/download_google_drive.git
FILEID="1Z1dc_gQSmafDeWgqRxTJwsDhT7C7g8XF"
FILEPATH="config/vox-adv-cpk.pth.tar"
python download_google_drive/download_gdrive.py $FILEID $FILEPATH