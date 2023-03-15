.PHONY: image
image:
	@docker build --build-arg PACKS="jira slack victorops jenkins terraform ansible aws datadog docker git github kubernetes vault" \
		-t bootswithdefer/st2packs:latest \
		st2packs-image --push

.PHONY: builder
builder:
	@docker build \
		-t stackstorm/st2packs:builder \
		st2packs-builder

.PHONY: runtime
runtime:
	@docker build \
		-t stackstorm/st2packs:runtime \
		st2packs-runtime

all: builder runtime image
