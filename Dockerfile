FROM fedora

RUN dnf update && \
    dnf install -y icedtea-web

ADD https://cheminotjws.etsmtl.ca/ChemiNot.jnlp /opt/ChemiNot.jnlp

CMD javaws /opt/ChemiNot.jnlp
