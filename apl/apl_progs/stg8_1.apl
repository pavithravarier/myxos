decl
	integer status;
enddecl
integer main()
{
	print ("APL open");
	status = Delete("file1.dat");
	print(status);
	return 0;
}
