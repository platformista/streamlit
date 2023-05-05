#!/bin/bash

# Source the `conda.sh` file to make this particular shell session able to run the `conda` command
. /app/conda/etc/profile.d/conda.sh

conda activate snowpark
conda info

streamlit run $PLATFORM_APP_DIR/snowpark_streamlit_app.py --server.port $PORT --server.address 0.0.0.0

# Put any commands needed to run a web app here
