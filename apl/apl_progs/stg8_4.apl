decl
	integer status;
	integer stat;
enddecl
integer main()
{
		status = Create("file1.dat");
		print("created status:");
		print(status);
		status = Open ("file1.dat");
		stat=status;
		print ("opendesc:");
		print (status);
		status = Delete("file1.dat");
		print("delete1:");
		print (status);
		status= Close(stat);
		print("close:");
		print(status);
		status = Delete("file1.dat");
		print("delete2:");
		print (status);
		return 0;
		

}
