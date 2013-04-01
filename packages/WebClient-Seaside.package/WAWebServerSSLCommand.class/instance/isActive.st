accessing
isActive
	^ (requestor isSelected: target) and: [target adaptor respondsTo: #toggleSSL]