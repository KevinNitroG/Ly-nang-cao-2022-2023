import sys
import os

with open("Scripts/Output list nâng cao.txt", "r", encoding="utf-8") as file:
    var = file.read()

lines = var.splitlines()
output = ""
for line in lines:
    if line != "" and not line.startswith("---"):
        last = line.split("/")[-1]
        line = line.replace(" ", "%20")
        output += f"[{last}]({line})\n"

with open("Scripts/ouput_directory_for_markdown.txt", 'w', encoding="utf-8") as file:
    file.write(output)
