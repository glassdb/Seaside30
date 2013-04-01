kom/4.10 (Comanche beta 4.10)
HttpFormDictionary
bolot 6/22/2001 12:09

- use this instead of plain Dictionary for GET and POST forms
- maintains multiple values for the same field
-- but is backwards compatible, #at: returns the first value (?)
-- so do #booleanAt:, #numberAt:
- to access the actual value at key, use #rawAt:
-- returns an OrderedCollection

TODO:
- file upload support
-- idea: first value is file name, second is FileStream?

Koubo 3/19/2002 12:25
fixed #at: and #at:ifAbsent: returns a String when the value had only one item. however, they returns a copied Collection of the value when it had multiple items.
