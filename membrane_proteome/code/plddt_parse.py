import argparse

# Create an argument parser
parser = argparse.ArgumentParser(description='Process edited output from colabfold log files to output protein file names along with their pLDDT and pTM scores.')

# Add arguments
parser.add_argument('file', help='path to the input file')
parser.add_argument('-o', '--output', help='path to the output file')
#parser.add_argument('-n', '--number', type=int, help='a number option')

# Parse the command-line arguments
args = parser.parse_args()

# Extract the input file path
file_path = args.file

# Extract the optional arguments
output_file = args.output
#number_option = args.number

# Open the input file
with open(file_path, "r") as file:
    # Read the file line by line
    #Store all of the lines in a list
    lines = file.readlines()
    
    for line in file:
        # Process each line
        print(line)

# Perform operations based on the optional arguments
if output_file:
    print("Output file:", output_file)

if number_option:
    print("Number option:", number_option)
