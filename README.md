DotNet Api Container Example Project
---

This is an example project to test .NET 8 application performance when running in container environment

This build genreated image with size 132MB

$ docker history dotnetexample

```
IMAGE          CREATED         CREATED BY                                      SIZE      COMMENT
4464ded17806   2 minutes ago   ENTRYPOINT ["./DotNetApiContainerExample" "-…   0B        buildkit.dockerfile.v0
<missing>      2 minutes ago   COPY /app/publish . # buildkit                  103MB     buildkit.dockerfile.v0
<missing>      5 minutes ago   WORKDIR /app                                    0B        buildkit.dockerfile.v0
<missing>      5 minutes ago   RUN /bin/sh -c apk add --no-cache     openss…   21.2MB    buildkit.dockerfile.v0
<missing>      6 weeks ago     /bin/sh -c #(nop)  CMD ["/bin/sh"]              0B
<missing>      6 weeks ago     /bin/sh -c #(nop) ADD file:1f4eb46669b5b6275…   7.38MB
```