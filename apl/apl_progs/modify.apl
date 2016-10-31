decl 
 integer pid1;
 integer pid2;
 integer retval;
 integer i;
 integer fd;
enddecl

integer main()
{
	pid1=Fork();
	
	if (pid1==-2) then
	
		pid2=Fork();

		if (pid2==-2) then
		
			retval=Create("d.dat");
			i=3;
			fd=Open("d.dat");
			while i<100 do
				retval=Write(fd,i);
				i=i+4;
			endwhile;
		endif;

		if (pid2>-1) then
			pid2=Wait(pid2);
			i=2;
			retval=Create("c.dat");
			fd = Open("c.dat");
			while i<100 do
				retval=Write(fd,i);
				i=i+4;
			endwhile;
		endif;

	endif;

	if (pid1>-1) then
		pid1= Wait(pid1);
		pid1= Fork();

		if pid1==-2 then
			i=1;
			retval=Create("b.dat");
			fd = Open("b.dat");
			while i<100 do
				retval=Write(fd,i);
				i=i+4;
			endwhile;
		endif;

		if (pid1 > -1 ) then
			pid1 = Wait(pid1);
			i=0;
			retval=Create("a.dat");
			fd = Open("a.dat");
			while i<100 do
				retval=Write(fd,i);
				i=i+4;
			endwhile;
			retval= Exec("merge.xsm");
		endif;	

	endif;
return 0;
}