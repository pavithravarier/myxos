decl 

integer PID;
integer ret;
integer i;

enddecl

integer main()
{
	print ("In P1");
	ret = Fork();
	i=0;

	if (ret==-2) then
		ret = Exec("P4.xsm");
		PID = Getpid();
		//print("child");
		print(PID);
		print ("leving child");
	endif;

	
		if (ret>-1 && ret<32) then 
		
		ret = Exec ("P2.xsm");
		PID=Getpid();
		//print("parent");
		print(PID);
		print ("leaving parent");
		endif;
	
	return 0;
}