decl
	string filename;
	integer pid;
enddecl
integer main()
{
	print("Enter filename");
	read(filename);
	
	while (filename != "exit") do
		
		pid = Fork();
		
		if (pid > -1) then
			// wait for the child process to finish execution
			pid = Wait(pid);
		endif;
		
		if (pid == -2) then
			// child process
			// exec into the required command
			pid = Exec(filename);
			if (pid == -1) then
				print("Error");
				break;
			endif;
		endif;
		
		if (pid == -1) then
			print("Fork error");
		endif;		
		if (pid>-1) then 
		print("Enter filename");
		read(filename);
		endif;
		
	endwhile;
	
	
	return 0;
}