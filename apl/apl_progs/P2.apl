decl 

integer PID;
integer ret;
integer i;

enddecl

integer main()
{	
	print ("In P2");
	PID = Getpid();
	print(PID);
	i=0;
	while i<1000 do
	i=i+1;
	endwhile;
		PID=Exec("P3.xsm");

		print("Leaving P2");
	return 0;
}