# Base image
FROM nginx:alpine

# Install Bash and nano
RUN apk add --no-cache bash nano

# Set bash as the default shell
SHELL ["/bin/bash", "-c"]
RUN echo 'export SHELL=/bin/bash' >> /root/.profile
