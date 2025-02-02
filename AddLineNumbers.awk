BEGIN{print "Line numbers by awk"}
{print NR ":", $0}
END{print "Done processing" FILENAME}