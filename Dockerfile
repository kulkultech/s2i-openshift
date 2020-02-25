# s2i-solver-errors
FROM python:3.8.1-buster

LABEL maintainer="Shruthi Raghuraman <sraghura@gmail.com>"

ENV BUILDER_VERSION 1.0

LABEL io.k8s.description="Platform for solver error classification" \
      io.k8s.display-name="builder 1.0" \
      io.openshift.tags="builder,1.0" \
      io.openshift.s2i.scripts-url="image:///usr/libexec/s2i"

WORKDIR /opt/app-root

# sets io.openshift.s2i.scripts-url label that way, or update that label
COPY ./s2i/bin/ /usr/libexec/s2i


CMD ["/usr/libexec/s2i/usage"]
