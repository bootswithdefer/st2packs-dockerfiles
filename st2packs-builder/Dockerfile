FROM stackstorm/st2:3.7

ONBUILD ARG PACKS
ONBUILD RUN : "${PACKS:?Please add '--build-arg PACKS=\"<space separated list of pack names>\"'.}"
