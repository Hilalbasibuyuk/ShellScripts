BEGIN{total=0}
{total+=total}
END{print total " lines"}