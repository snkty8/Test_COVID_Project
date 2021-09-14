CREATE TABLE Population_per_country_long_lat (
     country VARCHAR UNIQUE NOT NULL,
     population INT NOT NULL,
	 Longitude INT NOT NULL,
	 Latitude INT NOT NULL,
	 FOREIGN KEY (country) REFERENCES Covid_Fresh(country),
	 FOREIGN KEY (population) REFERENCES Covid_Fresh(population),
     PRIMARY KEY (country)
);

CREATE TABLE total_cases_per_location (
	country VARCHAR NOT NULL,
	total_cases INT NOT NULL,
	total_deaths INT NOT NULL,
 	people_fully_vaccinated INT NOT NULL,
	population INT NOT NULL,
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
	total_cases INT UNIQUE NOT NULL, 
	new_cases INT NOT NULL, 
	total_deaths INT UNIQUE NOT NULL, 
	icu_patients INT NOT NULL, 
  	hosp_patients INT NOT NULL,
 	new_tests INT NOT NULL,
	total_tests INT NOT NULL,
	total_vaccinations INT NOT NULL,
	people_vaccinated INT NOT NULL,
	people_fully_vaccinated INT UNIQUE NOT NULL,
	total_boosters INT NOT NULL,
	new_vaccinations INT NOT NULL,
	population INT UNIQUE NOT NULL,
	aged_70_older INT NOT NULL,
	extreme_poverty INT NOT NULL,
	cardiovasc_death_rate INT NOT NULL,
	diabetes_prevalence INT NOT NULL,
 	female_smokers INT NOT NULL,
	male_smokers INT NOT NULL,
	handwashing_facilities INT NOT NULL,
	life_expectancy INT NOT NULL,
	PRIMARY KEY (date)
);

--DROP TABLE Population_per_country_long_lat;
--DROP TABLE total_cases_per_location;
--DROP TABLE Covid_Fresh;
--DROP TABLE total_cases_per_date;

CREATE TABLE total_cases_per_date (
	date DATE NOT NULL,
	total_cases INT NOT NULL,
	total_deaths INT NOT NULL,
 	people_fully_vaccinated INT NOT NULL,
	FOREIGN KEY (date) REFERENCES Covid_Fresh(date),
	FOREIGN KEY (total_cases) REFERENCES Covid_Fresh(total_cases),
	FOREIGN KEY (total_deaths) REFERENCES Covid_Fresh(total_deaths),
	FOREIGN KEY (people_fully_vaccinated) REFERENCES Covid_Fresh(people_fully_vaccinated),
	PRIMARY KEY (date)
);


CREATE TABLE Percentages (
     country VARCHAR UNIQUE NOT NULL,
     population INT NOT NULL,
	 total_cases INT NOT NULL,
	 total_deaths INT NOT NULL,
	 FOREIGN KEY (country) REFERENCES Covid_Fresh(country),
     PRIMARY KEY (country)
);
