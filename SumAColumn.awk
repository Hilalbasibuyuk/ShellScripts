BEGIN{FS = "\t"; total = 0}
{sum = sum + $2}
END{print "Done";
print "Total sum is " sum}