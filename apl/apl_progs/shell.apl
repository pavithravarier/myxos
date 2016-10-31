integer main()
{	

	integer pid;

	integer i;
	string filename;
	filename="abc";
	while(filename!="exit") do

		print ("enter filename");
		read(filename);

		if(filename=="exit") then
			Exit();
		endif;

		pid= Fork();

		if(pid==-1) then
			print ("fork error");
			continue;
		endif;

		if(pid==-2) then
			pid=Exec(filename);
		endif;

		i=Wait(pid);
		if(i==-1) then
			print("Wait error");
			continue;
		endif;

	endwhile;

 return 0;

}