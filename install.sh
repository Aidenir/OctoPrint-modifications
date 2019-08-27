#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ${DIR}/../OctoPrint

echo "Workdir: ${DIR}"

echo "Install the modifications..."
cat ${DIR}/style.css >> ${DIR}/../OctoPrint/src/octoprint/static/css/octoprint.css
cp ${DIR}/index.jinja2 ${DIR}/../OctoPrint/src/octoprint/templates/index.jinja2

CUR=$(PWD)
cd ${DIR}/../OctoPrint
../oprint/bin/pip2 install -e .
sudo systemctl restart octoprint
cd ${CUR}
echo "Finished"
