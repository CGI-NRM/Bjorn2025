#!/bin/bash
R CMD BATCH regen.R
sed -i -e '/^<html xmlns="http:\/\/www.w3.org\/1999\/xhtml">$/r matomo.js' karta.html
git add karta.html
git commit -m "Update map"
git push
