BEGIN{print "Processing..."}

NR==1{print $0, NF, "fields"}

/^Unix/{print "Line starts with Unix", $0}
/Unix$/{print "Line ends with Unix", $0}

END{print NR " lines checked."}