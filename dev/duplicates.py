import sys

filename = sys.argv[1]
with open(filename, 'r') as file:
    lines = file.readlines()

words = []
duplicates = []

# Iterate through each line
for line in lines:
    word = line.strip()
    count = len(word.split())
    if count == 1:
        if word in words:
            duplicates.append(word)
        else:
            words.append(word)


print("Duplicate words:", duplicates)

