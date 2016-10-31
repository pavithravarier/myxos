decl
	integer status;
enddecl
integer main()
{
	print ("APL Close");
	status = Close(0);
	print(status);
	return 0;
}
