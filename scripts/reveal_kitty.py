# Script to reveal non-empty lines in kitty config file
from pathlib import Path


with (Path.home() / ".config/kitty/kitty.conf").open("r") as f:
    content = f.readlines()

lines = [f"* {l.strip()}" for l in content if l.strip() and not l.startswith("#")]
print("\nNon-empty lines in kitty config file:\n")
print("\n".join(lines))
print("\n")
