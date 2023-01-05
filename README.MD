# Apache, MySQL, PHP with CORS Docker Image

This repository contains a Docker image that runs Apache, MySQL, and PHP, and enables CORS on a Debian docker image.

## Usage

To build the Docker image, run the following command:

\`\`\`
docker build -t my-image .
\`\`\`

Replace \`my-image\` with the desired name for the image.

To run the Docker image, use the following command:

\`\`\`
docker run -p 80:80 -v /var/www/html:/var/www/html -v /var/lib/mysql:/var/lib/mysql my-image
\`\`\`

This will expose port 80 on the host and mount the directories \`/var/www/html\` and \`/var/lib/mysql\` from the host to the corresponding directories in the container.

## Mount Points

- \`/var/www/html\`: This directory contains the HTML, PHP, and other files for the web server. By mounting this directory from the host, you can easily update the content
