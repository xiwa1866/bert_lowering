#!/usr/bin/env python3
import sys, re

if len(sys.argv) != 3:
    print("Usage: strip_weights_simple.py <in.mlir> <out.mlir>")
    sys.exit(1)

inp, outp = sys.argv[1], sys.argv[2]

with open(inp, 'r') as f:
    text = f.read()

# 1) Remove the resource block entirely:
text = re.sub(
    r'dialect_resources\s*{.*?}\n',
    '',
    text,
    flags=re.DOTALL
)

# 2) Replace every dense_resource<...> with a zero‑filled dense<0.0>
text = re.sub(
    r'dense_resource<[^>]+>',
    'dense<0.0>',
    text
)

with open(outp, 'w') as f:
    f.write(text)

print(f"✅ Wrote stripped MLIR to {outp}")
