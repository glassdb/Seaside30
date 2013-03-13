rendering
renderCellForDate: aDate row: anObject index: aNumber on: html
	| text |
	html tableData
		style: 'background-color: ', (self colorForDate: aDate rowIndex: aNumber);
		align: 'center';
		with: [
			text := cellBlock value: anObject value: aDate.
			html anchor callback: [self selectDate: aDate rowIndex: aNumber]; with: text ]