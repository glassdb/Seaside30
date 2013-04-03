testing
testRendering
	self
		assert: WAPrettyPrintedDocumentTestComponent new
		rendersAs: '&lt;<span class="wa-tag">h1</span>&nbsp;<span class="wa-attribute-key">title</span>=<span class="wa-attribute-value">&quot;&amp;amp;foo;&quot;</span>&gt;&amp;amp;foo;&lt;/<span class="wa-tag">h1</span>&gt;&amp;nbsp;'