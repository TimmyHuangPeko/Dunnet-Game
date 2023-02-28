{item[$0] = $0;}

END{
	getline line < "F"
	n = split(line, input, " ")
	if(input[1] == "e" || input[1] == "d" || (input[1] == "s" && n == 2) || (input[1] == "p" && n == 4)){
		if(input[2] in item || (input[1] == "s" && input[2] ~ "tree")) print line;
		else print "You don't have that.";
	}
	else{
		if((input[1] == "x" && n == 3) || (input[1] == "s" && n == 3) || (input[1] == "p" && n == 5)){
			if((input[1] == "p" && input[4] in item) || (input[1] != "p" && input[2] in item)) print substr(line, 1, length(line) - 1);
			else{
				if(input[1] == "p") print "That indirect object is not here.";
				if(input[1] == "x") print "I don't see that here."
				if(input[1] == "s") print "You don't have that."
			}
		}
		else print line;
	}
}
