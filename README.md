# docker-unoconv

usage

`docker run -i --rm -v /path/to/source:/uploads -v /path/to/destination/out:/out aslubsky/unoconv /bin/bash -c "unoconv --listener & sleep 2 && unoconv -v -f html -o /out /uploads/my-file.pptx"`
