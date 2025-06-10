#!/bin/bash
sudo docker run -it --rm -v $(pwd):/wrk:Z -w /wrk mi-imagen-main /usr/main
