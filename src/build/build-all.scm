(import (r7rs) (scheme base))

(include "lib/s-expressions/s-markup/html/library.scm")

(include "build-www.scm")
(include "build-dns.scm")

(build-www)
(build-dns)