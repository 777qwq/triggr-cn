# Triggr action extensions

Another package can add a category of actions to Triggr's action picker
without any code in Triggr: install a plist in

    /var/jb/Library/Triggr/Extensions/<name>.plist

| Key | Type | Meaning |
|---|---|---|
| `Title` | string | Category name in the picker (required) |
| `ItemTitle` | string | Prefix in titles: "`ItemTitle`: item" (default: the plist name) |
| `Symbol` | string | SF Symbol for the category icon |
| `Color` | string | Icon colour: blue, green, indigo, orange, pink, purple, red, teal, yellow, gray |
| `ItemsDirectory` | string | Folder whose files are the items |
| `ItemsExtension` | string | Only files with this extension; it's left off the item name |
| `ItemsExclude` | array | Item names to hide |
| `Program` | string | Run for an item (required) |

Running an item runs `/var/jb/bin/sh <Program> <item>` as the mobile user: the
item is passed as its own argument and is never interpreted as a command.
SpringBoard can only start the jailbreak's `sh`, so `Program` must be a shell
script (it may then run anything else).

Assignments store `ext:<name>:<item>`. Example: EQELinker's `eqe.plist`.
