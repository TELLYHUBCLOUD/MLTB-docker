FROM ubuntu:24.04

# Copy TeraBox Artifacts from irisxdr/neo-wzml:latest
COPY --from=irisxdr/neo-wzml:latest /tmp/terabox_artifacts /tmp/terabox_artifacts

# Copy Mega SDK 8.1.1 from irisxdr/neo-wzml:latest (Python 3.12 compatible)
COPY --from=irisxdr/neo-wzml:latest /usr/local/lib/python3.12/dist-packages/mega /usr/local/lib/python3.12/dist-packages/mega

COPY . .

RUN bash Aeon

