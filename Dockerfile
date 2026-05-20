FROM bash:5
COPY entrypoint.sh /
COPY problem-matcher.json /
COPY splinter /
ENTRYPOINT ["/entrypoint.sh"]
