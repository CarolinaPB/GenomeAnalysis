import argparse

parser = argparse.ArgumentParser(description="Arguments")
parser.add_argument("-f", "--file", type=str, help="file")

args = parser.parse_args()

file=args.file

l=""
with open(file,"r") as f:
    with open ("outfile.txt","w") as out:
        for line in f:
            if ">" in line:
                pass
            else:
                l+=line.strip()
        out.write(l)
