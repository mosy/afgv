import os
import re

files = [f for f in os.listdir('src') if f.endswith('no.tex')]
count = 0

for filename in files:
    path = os.path.join('src', filename)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # We want to replace '_' with '\_' but ONLY if it's not already escaped.
    # Also we should avoid doing this in math mode [...] or $...$ strictly speaking,
    # but the error comes from text mode usage.
    # In this specific codebase, variable names like Last_PV in \tt seem to be the culprit.
    
    # Regex lookbehind to see if it's NOT preceded by backslash.
    # But python regex lookbehind needs fixed width. Backslash is fixed width.
    # (?<!\\)_ matches _ not preceded by \
    
    # However, we must be careful not to break file names in \includegraphics or label names if they have underscores?
    # Usually standard latex handles file names with underscores poorly anyway without grffile package.
    # But let's look at the error context: "Last_PV".
    
    # Let's perform a safer constrained replacement for now, targeting likely variable names.
    # Or just replace all unescaped underscores?
    # Risks:
    # - Math mode subscripts $V_{in}$ -> $V\_{in}$ (BROKEN)
    # - \includegraphics{my_image} -> \includegraphics{my\_image} (MIGHT BREAK or MIGHT BE REQUIRED depends)
    
    # Safety first: The error was specific to `i01557no.tex`.
    # Let's verify if that file has math mode with underscores.
    
    lines = content.splitlines()
    new_lines = []
    file_modified = False
    
    for line in lines:
        if "Last_PV" in line and "Last\\_PV" not in line:
            new_line = line.replace("Last_PV", "Last\\_PV")
            new_lines.append(new_line)
            file_modified = True
        elif "SP_high" in line and "SP\\_high" not in line:
             new_line = line.replace("SP_high", "SP\\_high")
             new_lines.append(new_line)
             file_modified = True
        elif "SP_low" in line and "SP\\_low" not in line:
             new_line = line.replace("SP_low", "SP\\_low")
             new_lines.append(new_line)
             file_modified = True
        else:
            new_lines.append(line)
            
    if file_modified:
        print(f"Fixing underscores in {filename}")
        with open(path, 'w', encoding='utf-8') as f:
            f.write('\n'.join(new_lines) + '\n')
        count += 1

print(f"Fixed underscores in {count} files.")
