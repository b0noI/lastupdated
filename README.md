Simple script that shows when all files in a specific git folder were updated (sorted from latest to the newest). Usage:

Prep
```bash
YOUR_REPO_PATH=...
git clone git@github.com:b0noI/lastupdated.git
cd lastupdated
cp lastupdated.sh "${YOUR_REPO_PATH}/"
```

Usage:
```bash
FOLDER_IN_YOUR_REPO=...
~/lastupdated.sh "${FOLDER_IN_YOUR_REPO}"
```
