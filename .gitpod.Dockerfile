FROM gitpod/workspace-full

RUN nvm install --lts && \
    nvm use --lts && \
    npm install -g npm && \
    npm install -g commitizen cz-emoji && \
    echo "{ \"path\": \"cz-emoji\", \"config\": { \"cz-emoji\": { \"skipQuestions\": [\"scope\", \"issues\"] } } }" > /home/gitpod/.czrc &&\
    npm install ---g yarn
