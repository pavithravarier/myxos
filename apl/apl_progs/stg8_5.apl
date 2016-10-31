decl
	integer status;
	integer wordd;
	 
	string s;
enddecl
integer main()
{
	//print ("APL write");
	
	status=Open("d.dat");
	while wordd!=-1 do
		wordd=Read(status,s);
		if s!="" then
			print (s);
		endif;
	endwhile;
	return 0;
}
