
# Figma Wireframes (JSON)

These JSON files define simple Figma-style wireframes for three pages:
- directory_dashboard.json
- employee_profile.json
- department_overview.json

## How to Import into Figma
Option 1: Use a "JSON to Figma" community plugin that reads node-like JSON and creates frames/rectangles/text in your file.

Option 2: If you prefer to run your own plugin:
- Create a new Figma plugin (Development → New Plugin).
- Paste a script that reads the JSON and creates nodes (FRAME, RECTANGLE, TEXT) with the properties in each object's fields.
- Load `*_documents.json` and run the plugin to generate the wireframes.

## Notes
- Coordinates are in pixels relative to the canvas.
- Colors use hex strings.
- Fonts assume Inter; you can replace with any font in your Figma file.
- The structure is intentionally simple: FRAME → (RECTANGLE/TEXT) children.

