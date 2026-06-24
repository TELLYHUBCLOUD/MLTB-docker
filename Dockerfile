FROM ubuntu:25.04

# Copy TeraBox SDK and MegaSDK 8.1.1 from irisxdr/neo-wzml:latest
COPY --from=irisxdr/neo-wzml:latest /usr/local/lib/python3.11/site-packages/terabox /usr/local/lib/python3.13/dist-packages/terabox
COPY --from=irisxdr/neo-wzml:latest /usr/local/lib/python3.11/site-packages/mega /usr/local/lib/python3.13/dist-packages/mega
COPY --from=irisxdr/neo-wzml:latest /usr/local/lib/python3.11/site-packages/mega* /usr/local/lib/python3.13/dist-packages/

COPY . .

RUN bash Aeon
