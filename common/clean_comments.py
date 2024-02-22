import re
import os
import sys

def remove_comments_from_file(file_path):
    with open(file_path, 'r') as file:
        content = file.read()

    # Remove single line comments
    content = re.sub(r"//.*", '', content)

    # Remove multi-line comments
    content = re.sub(r"/\*.*?\*/", '', content, flags=re.DOTALL)

    with open(file_path, 'w') as file:
        file.write(content)

def process_directory(directory_path):
    for root, dirs, files in os.walk(directory_path):
        for file in files:
            if file.endswith('.cpp'):
                file_path = os.path.join(root, file)
                remove_comments_from_file(file_path)

path = sys.argv[1]
process_directory(path)
