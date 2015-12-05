param ([string]$VMNameStr)
# The input is assumed to be one or more computer names in a single string
# using a comma delimiter. We can do the same thing in very little code using
# string instance methods.
$VMNameStr.Split(',').Trim()