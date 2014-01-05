comparing
= otherVersion
  (otherVersion isKindOf: self class)
    ifFalse: [ ^ false ].
  ^ major = otherVersion major and: [ minor = otherVersion minor ]