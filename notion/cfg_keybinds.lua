-- custom keybinds
defbindings("WScreen", {
    submap("Mod1+Shift_L", {
        kpress("l", "ioncore.exec('slock')"),
    }),
})
defbindings("WScreen", {
	submap("Mod1+z", {
		submap("z", {
			kpress("z", "ioncore.exec('systemctl suspend; slock')"),
		}),
	}),
})
defbindings("WScreen", {
	kpress("Print", "ioncore.exec('import -window root $HOME/$(date +%s).png')"),
})
