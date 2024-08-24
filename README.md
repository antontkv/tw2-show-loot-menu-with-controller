# The Witcher 2 Show Loot Window with the controller

## Nexus info

When playing with the controller you can't choose what to loot from the containers. It's autoloot by default. Even though you can do it when playing with KB/M.

Ported this window to controller UI.

- Up/Down movement.
- X button to take all.
- B button to exit.
- A button to take the item.

### Installation

Copy CookedPC into the Witcher 2 install directory, overwriting existing files.

Since `base_scripts.dzip` is modified you need to merge script files if you use other mods that change this dzip. Use [Gibbed RED Tools With UI](https://www.nexusmods.com/witcher2/mods/1027) to unpack/pack `base_scripts.dzip` and programs like WinMerge to merge files. To see what was changed in which files visit [GitHub repo](https://github.com/antontkv/tw2-show-loot-menu-with-controller).

The mod modifies the `global/gui/ui_loot.swf` file, so any other mod that also modifies this file will not be compatible.

## Dev info

It's not enough to remove `theGame.IsUsingPad()` check in `container_class.ws` to the open loot window. Well... it is enough, the loot window will open, but you will not be able to interact with it. You also need to modify the `ui_loot.swf` file from `abetterui.dzip` to add support for controller buttons.

To modify swf files I used [JPEXS Free Flash Decompiler](https://github.com/jindrapetrik/jpexs-decompiler).

You can see what was changed compared with the original scripts in this repo. I commit original (vanilla) scripts first, then the changes that were made.
