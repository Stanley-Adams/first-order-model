sudo apt update
sudo apt --assume-yes install ffmpeg python3-venv

python3 -m venv venvgen
source venvgen/bin/activate
python -m pip install -r requirements-latest.txt

git clone https://github.com/chentinghao/download_google_drive.git
FILEID="1L8P-hpBhZi8Q_1vP2KlQ4N6dvlzpYBvZ"
FILEPATH="images/vox-adv-cpk.pth.tar"
python download_google_drive/download_gdrive.py $FILEID $FILEPATH