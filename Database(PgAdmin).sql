CREATE TABLE Population_per_country_long_lat (
     country VARCHAR UNIQUE NOT NULL,
     population decimal(20) NOT NULL,
	 Longitude decimal(20) NOT NULL,
	 Latitude decimal(20) NOT NULL,
	 FOREIGN KEY (country) REFERENCES Covid_Fresh(country),
	 FOREIGN KEY (population) REFERENCES Covid_Fresh(population),
     PRIMARY KEY (country)
);

CREATE TABLE total_cases_per_location (
	country VARCHAR NOT NULL,
	total_cases decimal(20) NOT NULL,
	total_deaths decimal(20) NOT NULL,
 	people_fully_vaccinated decimal(20) NOT NULL,
	population decimal(20) NOT NULL,
	FOREIGN KEY (country) REFERENCES Covid_Fresh(country),
	FOREIGN KEY (population) REFERENCES Covid_Fresh(population),
	FOREIGN KEY (total_cases) REFERENCES Covid_Fresh(total_cases),
	FOREIGN KEY (total_deaths) REFERENCES Covid_Fresh(total_deaths),
	FOREIGN KEY (people_fully_vaccinated) REFERENCES Covid_Fresh(people_fully_vaccinated),
	PRIMARY KEY (country)
);

CREATE TABLE Covid_Fresh (
	country VARCHAR UNIQUE NOT NULL, 
	date DATE UNIQUE NOT NULL,
	total_cases decimal(20) UNIQUE NOT NULL, 
	new_cases decimal(20) NOT NULL, 
	total_deaths decimal(20) UNIQUE NOT NULL, 
	icu_patients decimal(20) NOT NULL, 
  	hosp_patients decimal(20) NOT NULL,
 	new_tests decimal(20) NOT NULL,
	total_tests decimal(20) NOT NULL,
	total_vaccinations decimal(20) NOT NULL,
	people_vaccinated decimal(20) NOT NULL,
	people_fully_vaccinated decimal(20) UNIQUE NOT NULL,
	total_boosters decimal(20) NOT NULL,
	new_vaccinations decimal(20) NOT NULL,
	population decimal(20) UNIQUE NOT NULL,
	aged_70_older decimal(20) NOT NULL,
	extreme_poverty decimal(20) NOT NULL,
	cardiovasc_death_rate decimal(20) NOT NULL,
	diabetes_prevalence decimal(20) NOT NULL,
 	female_smokers decimal(20) NOT NULL,
	male_smokers decimal(20) NOT NULL,
	handwashing_facilities decimal(20) NOT NULL,
	life_expectancy decimal(20) NOT NULL,
	PRIMARY KEY (date)
);


CREATE TABLE total_cases_per_date (
	date DATE NOT NULL,
	total_cases decimal(20) NOT NULL,
	total_deaths decimal(20) NOT NULL,
 	people_fully_vaccinated decimal(20) NOT NULL,
	FOREIGN KEY (date) REFERENCES Covid_Fresh(date),
	FOREIGN KEY (total_cases) REFERENCES Covid_Fresh(total_cases),
	FOREIGN KEY (total_deaths) REFERENCES Covid_Fresh(total_deaths),
	FOREIGN KEY (people_fully_vaccinated) REFERENCES Covid_Fresh(people_fully_vaccinated),
	PRIMARY KEY (date)
);


CREATE TABLE Percentages (
     country VARCHAR UNIQUE NOT NULL,
     population decimal(20) NOT NULL,
	 total_cases decimal(20) NOT NULL,
	 total_deaths decimal(20) NOT NULL,
	 FOREIGN KEY (country) REFERENCES Covid_Fresh(country),
     PRIMARY KEY (country)
);


select * from covid_fresh;


--DROP TABLE Population_per_country_long_lat;
--DROP TABLE total_cases_per_location;
--DROP TABLE Covid_Fresh;
--DROP TABLE total_cases_per_date;
--DROP TABLE percentages;