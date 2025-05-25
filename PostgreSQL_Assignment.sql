-- Active: 1747835496638@@127.0.0.1@5432@ph

-- creating tables
CREATE Table rangers(
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(70) NOT NUll
);

CREATE Table species(
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(100) NOT NULL,
    scientific_name VARCHAR(100) NOT NULL,
    discovery_date DATE,
    conservation_status VARCHAR(70) CHECK(
        conservation_status IN ('Endangered', 'Vulnerable')
    )
);

CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INTEGER REFERENCES rangers(ranger_id) NOT NULL ,
    species_id INTEGER REFERENCES species(species_id) NOT NULL ,
    sighting_time TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    location VARCHAR(100) NOT NULL,
    notes TEXT
);


-- insert rangers table data

INSERT INTO rangers(name, region) VALUES('Alice Green', 'Northen Hills'),('Bob White', 'River Delta '),('Carol King', 'Mountain Range');

INSERT INTO species (common_name, scientific_name, discovery_date, conservation_status)
VALUES
('Snow Leopard', 'Panthera uncia', '1775-01-01', 'Endangered'),
('Bengal Tiger', 'Panthera tigris tigris', '1758-01-01', 'Endangered'),
('Red Panda', 'Ailurus fulgens', '1825-01-01', 'Vulnerable'),
('Asiatic Elephant', 'Elephas maximus indicus', '1758-01-01', 'Endangered');
 

-- insert slightings table data

INSERT INTO sightings (species_id, ranger_id, location, sighting_time, notes)
VALUES
(1, 1, 'Peak Ridge', '2024-05-10 07:45:00', 'Camera trap image captured'),
(2, 2, 'Bankwood Area', '2024-05-12 16:20:00', 'Juvenile seen'),
(3, 3, 'Bamboo Grove East', '2024-05-15 09:10:00', 'Feeding observed'),
(1, 2, 'Snowfall Pass', '2024-05-18 18:30:00', NULL);



-- Problem - 1:
INSERT INTO rangers(name, region) VALUES('Derek Fox','Coastal Plains');





