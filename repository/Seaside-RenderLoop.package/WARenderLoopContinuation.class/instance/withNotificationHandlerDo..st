private
withNotificationHandlerDo: aBlock
	^ aBlock on: WARenderNotification do: [ :n | ]