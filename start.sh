if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/d65ff6f3/Matrix-01.git /Matrix-01
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /Matrix-01
fi
cd /Matrix-01
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
