decl 

integer PID;
integer ret;

enddecl

integer main()
{	
	print ("In P4");
	PID = Getpid();
	print(PID);
	PID=Exec("P5.xsm");
	print ("Leaving P4");
	return 0;
}