FROM fedora

RUN dnf update -y
RUN dnf install -y icedtea-web

ADD https://cheminotjws.etsmtl.ca/ChemiNot.jnlp /opt/ChemiNot.jnlp

CMD javaws /opt/ChemiNot.jnlp
