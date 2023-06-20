FROM local_go AS build

WORKDIR /work

COPY . /work

RUN CGO_ENABLED=0 go build -o /bin/server ./

FROM cgr.dev/chainguard/static 

# Copy the executable from the "build" stage.
COPY --from=build /bin/server /bin/

ENTRYPOINT [ "/bin/server" ]
