import os

navigation_items = [
    {"label": "Dashboard", "active": True, "target": "dashboard"},
    {"label": "Profile", "active": False, "target": "profile"},
    {"label": "Settings", "active": False, "target": "settings"},
    {"label": "Documents", "active": False, "target": "documents"},
    {"label": "Analytics", "active": False, "target": "analytics"},
    {"label": "Messages", "active": False, "target": "messages"},
    {"label": "Notifications", "active": False, "target": "notifications"},
    {"label": "Orders", "active": False, "target": "orders"},
    {"label": "Billing", "active": False, "target": "billing"},
    {"label": "Help", "active": False, "target": "help"}
]

template = """\"use client\"
export default function {label}() {{
  return (
    <article className="w-full h-full flex items-center justify-center">
      <h1>{label}</h1>
    </article>
  );
}}
"""

for item in navigation_items:
    # Ensure target directory exists
    os.makedirs(item["target"], exist_ok=True)

    # Generate the content of the file
    content = template.format(label=item["label"])

    # Define the file path
    file_path = os.path.join(item["target"], "page.js")

    # Write the content to the file
    with open(file_path, "w") as file:
        file.write(content)

    print(f"Generated {file_path}")
