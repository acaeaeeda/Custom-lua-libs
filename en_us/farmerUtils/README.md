# Introductions
Farmer Utils offers some ~~currently only one~~ methods for managing farmlands when using CC:T turtles.<br>
Version: `0.0.4`

## Notes
- The configuration file (`dataManager.lua`) must be in the same directory level as the library body (`farmerutils.lua`).
- This document will always be consistent with the latest version.
- This document is translated by Tiangong AI.

## Further Reading
[How to Edit Configuration Files](https://github.com/acaeaeeda/Custom-lua-libs/blob/abf86cf3c57c4cb4fee07d2d525d797b14882e01/en_us/farmerUtils/Configurations.md)

# Methods
## canReap() -> boolean
**Description:**
Detects whether the crop below the turtle can be harvested based on the information in the configuration file.<br>
**Parameters:**
No parameters.<br>
**Return value:**
- boolean, `true` or `false`.