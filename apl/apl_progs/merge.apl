decl 
	integer retval1;
	integer retval2;
	integer retval;
	integer pid;
	integer fd1;
	integer fd2;
	integer fd;
	string x;
	string y;
	integer merges(integer fd1,fd2,fd);
	integer i;
	integer j;

enddecl

integer merges(integer fd1,fd2,fd)
{
		retval1=0;
		retval2=0;
		retval1= Read(fd2,y);
		retval2= Read(fd1,x);
		i=0;
		j=0;
		while i<25 && j<25 do
			
			if (x<y) then
				retval= Write(fd,x);
				retval1= Read(fd1,x);
				i=i+1;
			else
				retval= Write(fd,y);
				retval2=Read(fd2,y);
				j=j+1;
			endif;
		endwhile;

		if i==25 then
			while j<25 do
				retval2 = Read(fd2,y);
				retval= Write(fd,y);
				j=j+1;
			endwhile;
		endif;

		if j==25 then
			while i<25 do
				retval1 = Read(fd1,x);
				retval= Write(fd,x);
				i=i+1;
			endwhile;
		endif;	
	return 0;	
}

integer main()
{
	pid = Fork();

	if pid==-2 then
		retval1 = Create ("cd.dat");
		fd1 = Open("c.dat");
		fd2 = Open("d.dat");
		//print ("fd2");
		//print (fd2);
		fd = Open ("cd.dat");
		retval1=merges(fd1,fd2,fd);
		retval=Close(fd);

	endif;

	if (pid>-1) then
		pid = Wait(pid);
		retval1 = Create ("ab.dat");
		fd1 = Open("a.dat");
		fd2 = Open("b.dat");
		fd = Open ("ab.dat");
		retval1=merges(fd1,fd2,fd);
		retval=Close(fd);

		retval1 = Create ("abcd.dat");
		fd1 = Open("ab.dat");
		fd2 = Open("cd.dat");
		fd = Open ("abcd.dat");
		retval1= merges(fd1,fd2,fd);	
	
	endif;



	return 0;	


}
