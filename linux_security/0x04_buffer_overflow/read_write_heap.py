#!/usr/bin/python3
"""in this module,we use pid to find process then encode find_str and replace it with encoded version of replace_str"""
import os

def yaddas_pozan(pid, find_str, replace_str):
    find_b = find_str.encode()
    replace_b = replace_str.encode()
    with open(f"/proc/{pid}/maps", 'r') as maps:
        for line in maps:
            if 'rw-p' in line:
                addr, _ = line.split(' ', 1)
                start, end = [int(a, 16) for a in addr.split('-')]
                with open(f"/proc/{pid}/mem", 'rb+') as mem:
                    mem.seek(start)
                    chunk = mem.read(end - start)
                    idx = chunk.find(find_b)
                    while idx != -1:
                        mem.seek(start + idx)
                        mem.write(replace_b)
                        idx = chunk.find(find_b, idx + 1)

if __name__ == "__main__":
    import sys
    yaddas_pozan(sys.argv[1], sys.argv[2], sys.argv[3])
