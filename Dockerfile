# Version: 0.0.1

FROM erben22/rpi-rtlsdr-base
MAINTAINER R. Cody Erben
ENV REFRESHED_AT 2016-02-05

# Expose the well-known-ish rtl_tcp port of 1234, and then
# our ENTRYPOINT is the rtl_tcp program bound to the
containers externally-available interface.  Without -a,
rtl_tcp binds to localhost which means it will not be
accessiblly outisde the container on the host interface.

EXPOSE 1234
ENTRYPOINT ["/usr/local/bin/rtl_tcp", "-a", "172.17.0.1"]
