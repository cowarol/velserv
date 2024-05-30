FROM alpine:3.16 AS builder

# Install dependencies in a separate stage
RUN apk add --no-cache bash gcc musl-dev libgcc

RUN mkdir -p /opt/velbus
# Copy source code
COPY velserv.c /opt/velbus

WORKDIR /opt/velbus

# Compile the application (assuming velserv.c is the source)
RUN gcc -o velserv velserv.c -lpthread

# Create a smaller production image
FROM alpine:latest AS production

# Copy the compiled binary
COPY --from=builder /opt/velbus/velserv /opt/velbus/velserv

# Expose the port
EXPOSE 3788

# Run the application
CMD ["/opt/velbus/velserv", "-v", "-v", "-v", "-v"]
