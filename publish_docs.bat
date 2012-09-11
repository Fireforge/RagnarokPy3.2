echo "Building Sphinx docs..."
cd sphinx
./make html
cd ..

echo "Publishing to Github pages..."
git checkout gh-pages
