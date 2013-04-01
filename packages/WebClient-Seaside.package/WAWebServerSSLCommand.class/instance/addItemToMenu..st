accessing
addItemToMenu: aMenu
	"Hack. Must nuke the default blankIcon used by OB."

	self isActive ifFalse:[^self].
	super addItemToMenu: aMenu.
	aMenu lastItem icon: nil.
