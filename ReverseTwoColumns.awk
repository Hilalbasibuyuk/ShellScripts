BEGIN{FS = "\t"}
{print $2 "\t" $1}