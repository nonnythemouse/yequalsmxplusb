#!/bin/bash

pushd book1; pdflatex book1.tex; pdflatex book1.tex; pdflatex book1.tex; popd > /dev/null;
pushd ebook; pdflatex ebook.tex; pdflatex ebook.tex; pdflatex ebook.tex; popd > /dev/null;
pushd raw; pdflatex raw.tex; pdflatex raw.tex; pdflatex raw.tex; popd > /dev/null;

git add book1/book1.pdf
git add ebook/ebook.pdf
git add raw/raw.pdf

git status

