@ECHO OFF

echo.Publishing to Github pages...
git checkout master sphinx/gh_pages_build/html
cp sphinx/gh_pages_build/html/* . -f -r
rm sphinx -r
git add -A
git commit -a -m "Generated gh-pages"
git push origin gh-pages
echo.Done! Switching to master branch...
git checkout master