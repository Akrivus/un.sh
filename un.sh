cat repos.txt | while read repo 
do
  echo "Cloning $repo"
  git clone $repo repo
  cd repo
  git branch -m master main
  git push -u origin main
  git symbolic-ref refs/remotes/origin/HEAD refs/remotes/origin/main
  rm -rf repo
done
echo "Done!"