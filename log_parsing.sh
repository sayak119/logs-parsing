# This command will print out the longest request
# First, use cat to take the file for parsing
# Then, grep to look for time, we are searching for a number ending with 'ms', it will get us time in milliseconds
# Then, use sed to cut out 'ms' part
# Then, sort it numerically in reverse order to have biggest at top
# Finally, use head -1 to print out just one

cat tmp_more_than_50 | grep -o "[0-9]\+ms" | sed 's/\ms//' | sort -nr | head -1


###########################################################################################################################

# First, use cat to take the input from file
# Then, use grep to take a GET or POST along with the ling behind it
# Then, use sed to cut out '?....', this will cut out the parameters
# Next, cut is used to remove quotes
# Then, sort the output
# Then, use uniq -c to count output
# Finally, sort the output of uniq in descending order of count

cat tmp_more_than_50 | grep -o "\(GET\|POST\) \".*\"" | sed 's/\?.*\"/ /' | sed -e 's/^"//' -e 's/"$//' | sort | uniq -c | sort -nr
