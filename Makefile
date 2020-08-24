IMAGE_NAME := crosstalkio/webrtc-android-builder

all:
	docker build --network=host --force-rm \
	-t $(IMAGE_NAME) \
	-f Dockerfile \
	.

push:
	docker push $(IMAGE_NAME)
