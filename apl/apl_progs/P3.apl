decl 

integer PID;
integer ret;

enddecl
integer main()
{	
	print ("In P3");
	PID = Getpid();
	print(PID);
	print ("Leaving P3");
	return 0;
}