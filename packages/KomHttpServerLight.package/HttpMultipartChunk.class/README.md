kom/4.12 (Comanche/4.12)

MultipartChunkHeader (kom/4.8; bolot 4/2/2001 18:52)
- in kom49 (or kom50) this will be used only for internal purposes
-- applications will access multipart form fields through regular fieldAt: technique

Comment from kom46:
- this is a hack (bolot 10/25/2000 17:17)
- store a part's (from a multipart message) header information:
-- header (raw)
-- properties (extracted and converted info, such as file-name, content-length, etc.)