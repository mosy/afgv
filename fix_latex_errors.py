import os
import re

files = [f for f in os.listdir('src') if f.endswith('no.tex')]
count = 0

for filename in files:
    path = os.path.join('src', filename)
    with open(path, 'r', encoding='utf-8') as f:
        content = f.read()
    
    if '\\text{' in content:
        # Replace \text{...} with \mbox{...}
        # Simple string replacement might be enough if braces are balanced simply.
        # But for strictly correct replacement we assume \text{...} doesn't have nested braces handled weirdly.
        # Given my translation inputs, they are simple strings.
        
        new_content = content.replace('\\text{', '\\mbox{')
        
        with open(path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        count += 1
        print(f"Fixed {filename}")

print(f"Total files fixed: {count}")
