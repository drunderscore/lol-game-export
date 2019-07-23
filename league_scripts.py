# James Puleo (2019)
# I hate Python. Do not expect good code.
import subprocess
import os
import sys
from pathlib import Path

LUA_DECOMPILER_PATH = "E:\\unluac_2015_06_13.jar"

# Read an 4-byte length-prefixed string
def read_length_prefixed_string(stream):
    strLen = int.from_bytes(stream.read(4), "little")
    return stream.read(strLen).decode("ascii")


def main():
    if len(sys.argv) >= 2:
        stream = open(sys.argv[1], "rb")

        totalLen = int.from_bytes(stream.read(4), "little")
        print(f"{totalLen} strings in descriptor")
        with open("descriptor.txt", "w") as descriptor:
            descriptor.write(f"{totalLen} strings\n")
            for i in range(totalLen):
                descriptor.write(read_length_prefixed_string(stream) + "\n")
        return

    Path(os.getcwd() + "\\decomp").mkdir(exist_ok=True)
    plist = Path(Path.cwd()).glob("*")

    for p in plist:
        if not p.is_file():
            continue

        with open(f"{os.getcwd()}\\decomp\\{p.stem}.lua", "w") as out:
            subprocess.call(["java", "-jar", LUA_DECOMPILER_PATH, str(p)], stdout=out)


if __name__ == "__main__":
    main()
