.PHONY: all mac x86

all:
	@echo "use 'make mac'"

mac:
	DOCKER_BUILDKIT=1 docker build --platform linux/arm64 -t esromneb/buildtools-b:arm-1 .

x86:
	DOCKER_BUILDKIT=1 docker buildx build -t esromneb/buildtools-b:x86-1 .


push:
	docker push esromneb/buildtools-b:1

