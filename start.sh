echo "Cloning Repo...."
if [ -z $BRANCH ]
then
  echo "Cloning main branch...."
  git clone https://github.com/TeamShizu/MusicV1 /MusicV1
else
  echo "Cloning $BRANCH branch...."
  git clone https://github.com/TeamShizu/MusicV1 -b $BRANCH /MusicV1
fi
cd /MusicV1
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 main.py
