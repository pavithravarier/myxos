decl
	integer status;
enddecl
integer main()
{
	status = Create("file1.dat");
	print(status);
	return 0;
}
