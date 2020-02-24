# s2i-solver-errors
FROM python:3.8.1-buster

LABEL maintainer="Shruthi Raghuraman <sraghura@gmail.com>"

ENV BUILDER_VERSION 1.0

LABEL io.k8s.description="Platform for solver error classification" \
      io.k8s.display-name="builder 1.0" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="builder,1.0"


COPY ./solver/ /opt/app-root/

# sets io.openshift.s2i.scripts-url label that way, or update that label
COPY ./s2i/bin/ /usr/libexec/s2i

RUN chown -R 1001:1001 /opt/app-root

# This default user is created in the openshift/base-centos7 image
USER 1001

EXPOSE 8080

CMD ["/usr/libexec/s2i/usage"]



# do it manually
# yum install -y python3
