private
basicStart
	self server 
		delegate: (ZnSeasideServerAdaptorDelegate with: self);
		start