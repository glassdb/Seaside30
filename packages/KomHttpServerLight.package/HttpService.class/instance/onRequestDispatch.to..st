pluggable
onRequestDispatch: aSelector to: anObject

	self plug: 
		(MessageSend 
			receiver: anObject 
			selector: aSelector 
			arguments: #(nil))