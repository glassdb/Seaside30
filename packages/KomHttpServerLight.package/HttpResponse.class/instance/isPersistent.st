accessing
isPersistent

	^(self fieldAt: 'Connection') = 'Keep-Alive'