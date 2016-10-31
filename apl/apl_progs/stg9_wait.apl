integer main()
{
	integer pid;
	integer i;
	pid = Fork(); //return3
	if (pid == -2) then
		// child
		pid = Exec("even.xsm");
	endif;
	// wait for child to finish
	// ./xsm --timer=10 should not get you an interleaved output
	integer status;
	status = Wait(pid);
	i=1;
	while i<50 do

print(i);
i=i+2;
endwhile;
	return 0;
}
