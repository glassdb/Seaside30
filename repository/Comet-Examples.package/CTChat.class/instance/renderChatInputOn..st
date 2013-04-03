rendering-chat
renderChatInputOn: html
	html textArea
		id: #input;
		callback: [ :value | self message: value ];
		onEnter: (html jQuery ajax
			onSuccess: ((html jQuery: #input) 
				value: String new);
			serializeThis)