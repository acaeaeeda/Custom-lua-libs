# Introductions
Farmer Utils offers some ~~currently only one~~ methods for managing farmlands when using CC:T turtles.<br>
Version: `0.0.4`

## Notes
- The configuration file (`dataManager.lua`) must be in the same directory level as the library body (`farmerutils.lua`).
- This document will always be consistent with the latest version.

# Defined Methods
## canReap() -> boolean
**Description:**
Detects whether the crop below the turtle can be harvested based on the information in the configuration file.<br>
**Parameters:**
No parameters.<br>
**Return value:**
- boolean, `true` or `false`.