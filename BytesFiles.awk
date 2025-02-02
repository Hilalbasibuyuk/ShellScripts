BEGIN{print "   BYTES \t FILE";
sum = 0; filenum = 0;}

/^-/{sum = sum + $5; filenum++; printf("%10d \t%s\n", $5, $9)}
/^d/{print "     <dir> \t", $9}

END{print "\n   Total: " sum "bytes in";
print "     "filenum "regular files"}