tests-rendering
testRenderedHtmlWithScripts
	self
		assert: [ :html |
			html div script: (html element remove).
			html div script: (html element update: [ :r | r span ]) ]
		renders: '<div id="id1"></div><div id="id2"></div><script type="text/javascript">/*<![CDATA[*/$("id1").remove();$("id2").update("<span><\/span>");/*]]>*/</script>'