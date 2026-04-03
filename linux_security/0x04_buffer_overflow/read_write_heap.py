#!/usr/bin/python3
"""in this module,we use pid to find process then encode find_str and replace it with encoded version of replace_str"""
import os
import sys
import sys

def yaddas_pozan(pid, find_str, replace_str=""):
    find_b = find_str.encode()
    # Fill replacement with nulls to match target length
    replace_b = replace_str.encode().ljust(len(find_b), b'\x00')
    with open(f"/proc/{pid}/maps", 'r') as maps:
        for line in maps:
            if 'rw-p' in line:
                start, end = [int(a, 16) for a in line.split()[0].split('-')]
                with open(f"/proc/{pid}/mem", 'rb+') as mem:
                    mem.seek(start)
                    chunk = mem.read(end - start)
                    idx = chunk.find(find_b)
                    while idx != -1:
                        mem.seek(start + idx)
                        mem.write(replace_b)
                        idx = chunk.find(find_b, idx + 1)

if __name__ == "__main__":
    yaddas_pozan(sys.argv[1], sys.argv[2], sys.argv[3] if len(sys.argv) > 3 else "")
