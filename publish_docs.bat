echo "Building Sphinx docs..."
cd sphinx
./make html
cd ..

echo "Publishing to Github pages..."
git checkout gh-pages
git checkout master sphinx/gh_pages_build/html
cp .\sphinx\gh_pages_build\html\* . -force
rm sphinx -r