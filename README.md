# Loki Scanner in a Container

This is based on the [SANS ISC Diary _Quick IOC Scan With Docker_](https://isc.sans.edu/diary/29788).

## CREATE IMAGE

To build the image, run:

```bash
docker build -t loki .
```

## PULL FROM DOCKER HUB

Alternatively, you can pull the pre-built image:

```bash
docker pull resistor52/loki:latest
```

## USAGE

Just give no arguments to get some help:

```bash
docker run --rm -it loki
```

To perform a scan on a mounted volume, `cd` to the volume and run:

```bash
docker run --rm -it -v .:/evidences loki -p /evidences --noprocscan
```
