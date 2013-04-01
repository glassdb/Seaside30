kom/4.12 (Comanche/4.12)
bolot 2/20/2002 13:53
- rawUrl = the entire request string
- url = rawUrl up to ?
- queryString = rawUrl after the first ?
- rawUrl == url?queryString

HttpRequest (bolot 4/2/2001 18:51)
- HTTP request object wrapper
- handles details of HTTP
-- headers, formats, etc.
- as of kom47, handles multipart posts
- in kom49 (or kom50) a minor refactoring will happen