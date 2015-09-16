grammar
unaryMessageSend
	^ super unaryMessageSend
		map: [ :receiver :selector | FogMessageSendNode receiver: receiver selector: selector arguments: #() ]