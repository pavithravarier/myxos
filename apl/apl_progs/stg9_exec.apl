integer main()
{
	integer pid;

	print ("Before Exec");
	pid=Exec("even.xsm");
	print(pid);
	print ("After Fork");
	return 0;
}