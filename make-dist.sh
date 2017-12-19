#!/usr/bin/env bash
# Note the set -ev at the top.
# The -e flag causes the script to exit as soon as
# one command returns a non-zero exit code. This
# can be handy if you want whatever script you have
# to exit early. It also helps in complex installation
# scripts where one failed command wouldn’t otherwise
# cause the installation to fail.
set -ev

# grip to HTML
# https://github.com/joeyespo/grip
grip README.md --export dist/html/polibuda-faq.html

# html to PDF using wkhtmltopdf
xvfb-run wkhtmltopdf dist/html/polibuda-faq.html dist/pdf/polibuda-faq.pdf

