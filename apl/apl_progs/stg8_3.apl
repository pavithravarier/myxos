decl
	integer status;
enddecl
integer main()
{
	print ("APL delete");
	status = Delete("file1.dat");
	print(status);
	return 0;
}
