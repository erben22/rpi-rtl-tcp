# rpi-rtl-tcp
Repository for a docker image that runs the rtl_tcp program.  Leveraging from the erben22/rpi-rtlsdr-base image, this container runs an instance of the rtl_tcp program.

### Upstream Links

* Docker Registry @ [erben22/rpi-rtl-tcp](https://hub.docker.com/r/erben22/rpi-rtl-tcp/)
* GitHub @ [erben22/rpi-rtl-tcp](https://github.com/erben22/rpi-rtl-tcp)

## Usage

Run rtl_tcp in a container, exposing connections to it via port 1234.  Using --privileged and mapping the /dev/bus/usb volume, an RTL dongle is made available to the container, and clients will be able to connect via port 1234 to the docker hosts's address.

        sudo docker run -d -it -p 1234:1234 --privileged -v /dev/bus/usb:/dev/bus/usb erben22/rpi-rtl-tcp

## Dockerfile Details

- Based off the erben22/rtlsdr-base image.
- ENTRYPOINT launches rtl_tcp, exposing the RTLSDR dongle via the host on port 1234.
