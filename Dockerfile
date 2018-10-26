# Version: 0.0.1

FROM erben22/rpi-rtlsdr-base
MAINTAINER Stewart Cossey
ENV REFRESHED_AT 2018-10-26

# Forked from Cody Erben, cheers mate!
# Expose the well-known-ish rtl_tcp port of 1234, and then
# our ENTRYPOINT is the rtl_tcp program bound to the
# containers externally-available interface.  Without -a,
# rtl_tcp binds to localhost which means it will not be
# accessiblly outisde the container on the host interface.

EXPOSE 1234
ADD launch-rtl-tcp.bash /rtl-tcp/
ENTRYPOINT ["/rtl-tcp/launch-rtl-tcp.bash"]
