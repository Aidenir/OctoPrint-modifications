#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "Workdir: ${DIR}"
echo "Make backups of the old files..."
cp ${DIR}/../OctoPrint/src/octoprint/static/css/octoprint.css ${DIR}/../OctoPrint/src/octoprint/static/css/octoprint.css.bak
cp ${DIR}/../OctoPrint/src/octoprint/templates/index.jinja2 ${DIR}/../OctoPrint/src/octoprint/templates/index.jinja2.bak

echo "Install the modifications..."
cat ${DIR}/style.css >> ${DIR}/../OctoPrint/src/octoprint/static/css/octoprint.css
cp ${DIR}/index.jinja2 ${DIR}/../OctoPrint/src/octoprint/templates/index.jinja2

echo "Finished"
