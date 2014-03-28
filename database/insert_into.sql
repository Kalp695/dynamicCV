INSERT INTO person (fName, lName, address, postnumber, city, phone, email)
VALUES ("Aleksi", "Monaco", "Paciuksenkaari 15 A 14", "00270", "Helsinki", "0408489474",
		"aleksi.monaco@hotmail.com");
		
INSERT INTO degree (name, compYear, school, description, person_id)
VALUES ("Bachelor of Business Administration", "2015", "HAAGA-HELIA University of Applied Sciences", 
		"I am specialized to be a software developer.", 1);
		
INSERT INTO degree (name, compYear, school, description, person_id)
VALUES ("Upper secondary school matriculation exam ", "2011", "Alppila High School", 
		"Subjects written in the exam: Finnish (Native language), English (A-level), Physics, Mathematics (A-level), French. ", 1);
		
INSERT INTO workExperience (employer, title, taskDescription, startDate, person_id)
VALUES ("Siwa Mechelininkatu", "Salesperson", "Running the store, working at the cash register and customer service.", "2012/02/22", 1);

INSERT INTO workExperience (employer, title, taskDescription, startDate, endDate, person_id)
VALUES ("Makuuni Fredrikinkatu", "Intern", "Returning rented movies, customer service and generally keeping the store clean and attractive. ", 
		"2011/08/24", "2011/11/23", 1);