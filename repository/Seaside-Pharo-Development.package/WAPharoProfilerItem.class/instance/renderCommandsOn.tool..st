rendering
renderCommandsOn: html tool: profilerTool
	html anchor
		callback: [ profilerTool message: self tree ];
		with: 'Tree'.
	html text: ' '.
	html anchor
		callback: [ profilerTool message: self leavesByTime ];
		with: 'Leaves (time)'.
	html text: ' '.
	html anchor
		callback: [ profilerTool message: self leavesBySends ];
		with: 'Leaves (sends)'.
	html text: ' '.
	html anchor
		callback: [ profilerTool message: self stats ];
		with: 'Stats'