-- custom keybinds
defbindings("WScreen", {
	submap("Mod1+Shift_L", {
		kpress("s", "ioncore.exec('slock')"),
	}),
})
defbindings("WScreen", {
	submap("Mod1+z", {
		submap("z", {
			kpress("z", "ioncore.exec('slock')"),
		}),
	}),
})
defbindings("WScreen", {
	kpress("Print", "ioncore.exec('import -window root $HOME/$(date +%s).png')"),
})
