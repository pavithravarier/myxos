integer main()
{
	integer pid;
	pid = Fork();
	if (pid == -2) then
		// child
		pid = Exec("even.xsm");
	endif;
	return 0;
}