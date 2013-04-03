configuration
menuCommandOn: aBuilder
	<worldMenu>

	(aBuilder item: self title)
		parent: #Tools;
		action: [ self open ]