/*  
    CREATING THE TABLES
    
    Comment in/out these commands as necessary.
*/
/*
CREATE SCHEMA [FantasyTravel];
GO
*/

CREATE TABLE [FantasyTravel].[Places]
(
    id int PRIMARY KEY IDENTITY,
    name varchar(100) NOT NULL,
    description varchar(1000),
    language int NOT NULL,
    biomeType int FOREIGN KEY REFERENCES [FantasyTravel].[Biomes](id) NOT NULL
); 
GO


CREATE TABLE [FantasyTravel].[Biomes]
(
    id int PRIMARY KEY,
    x int NOT NULL,
    y int NOT NULL,
    biomeType VARCHAR(255),
    realLifeReference VARCHAR(255)

)


/*  
    DELETIONS
*/
/*
DROP TABLE [FantasyTravel].[Places];
DROP SCHEMA [FantasyTravel];
GO
*/

/*
    DATA CREATION (SEEDING)
*/
INSERT INTO[FantasyTravel].[Biomes] (Id, X, Y, BiomeType, RealLifeReference) VALUES (1, 29, 95, 'warm temperate', 'houston');
INSERT INTO[FantasyTravel].[Biomes] (Id, X, Y, BiomeType, RealLifeReference) VALUES (2, 40, 105, 'tundra', 'rocky mt. nt. park');
INSERT INTO[FantasyTravel].[Biomes] (Id, X, Y, BiomeType, RealLifeReference) VALUES (3, 48, 110, 'Forest', 'fort belknap');
INSERT INTO[FantasyTravel].[Biomes] (Id, X, Y, BiomeType, RealLifeReference) VALUES (4, 0, 0, 'artificial climate', 'n/a');
INSERT INTO[FantasyTravel].[Biomes] (Id, X, Y, BiomeType, RealLifeReference) VALUES (5, 37, 116, 'desert', 'death valley');

    /* Stephen */
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Naboo', 'A lively planet with lakes, rolling plains, and green hills where vistors can see wildlife or visit the capital where the royal family lives.', 2, 1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Hoth', 'a planet full of snow and ice where vistors can ski and snowboard, but be careful to stick to the resort for saftey!', 1, 2);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Endor', 'a planet of endless forests, savannahs,grasslands, and mountains.  Perfect for any nature lovers.', 2, 3);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Bespin', 'a planet of clouds with a small area of breathability called Cloud City where one can hit the casino or hop in a cloud car for a sightseeing tour of the city.', 2, 4);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Tatooine', 'A planet with vast deserts and a warm climate.  Visitors can relieve their thirst after their time in the desert at Mos Eisley Cantina but keep your belognings close and no droids!', 3, 5);
GO
    /* Ian */
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('El Nath', 'A snowy, mountainous region in the continent of Ossyria. Home to the original guild masters of Maple World.', 5, 2);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Ellinia', 'Forests lush with greenery and trees large enough to house civilizations. Fairies reside here and uphold the magic and life that protects the Maple World.', 11, 1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Ludus Lake', 'The greater region which contains the Korean Folk Town, the Omega Sector, and the Kingdom of Toys: Ludibrium. Practice caution near the clocktower in Ludibrium.', 11, 4);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('The Hotel Arcus', 'An arid desert region in the middle of continental Grandis. Rumor has it that there is an ancient god dormant under the sands of Arcus...', 7, 5);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Sellas', 'Located beneath the mirrored memory sea of Esfera, this region is home to many Erda resembling aquatic lifeforms. The vastness of the region in combination with the luminosity of its inhabitants has granted it the moniker ''Where the Stars Rest''', 0, 6);
GO

    /* Russell */
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Hyrule Castle', 'A castle where the hyrule family live along with many other human citizens.', 1, 1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Goron Mountain', 'An extremly tall mountain that can be seen from far away. Home to the rock-eating Gorons.', 4, 2);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Ikana Canyon', 'A Large canyon cut off from society. Filled with zombies, mummies, and ghosts.', 5, 3);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('The Great Bay', 'A vast ocean that stretches on for miles. Without guidance, one can get lost sailing these waters.', 4, 2);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('The Deku Tree', 'A talking tree that protects the forest.', 8, 1);
GO

    /* James */
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Numenor', 'A large island west of Middle-Earth given as a gift by the Valar to the Edain who supported the Elves against Morgoth during the first age. The inhabitants tend to be larger and live longer than most humans. The island is mostly grassland with a humid climate and mild winters. It is oval shaped and is about 200 miles long east-west and 150 miles long north-south. The capital is crowned by a tall tower in the center built during the reign of the sixth king.' ,2,1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('The Lonely Mountain', 'The Lonely mountain stands around 9500 feet. It contains snow year round. It feeds the river running, also known as Celduin which helps drive the economy of dale near the foot of the mountain. Once home to a mighty dragon, the inhabitants now swell the halls and drive the smithies and mining operations', 1,2);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('The Infinite Tower', 'A not quite so stable place. The Infinite tower takes Hilbert''s hotel to a whole new universe, literally. We can''t garuntee you come back, but if you''re looking for a time and space warping experience this is the place. Floor zero begins at the top, and the possiblities are endless as you move down to an infinite number of floors, each it''s own world(we advise you stay on the top floors. The zeroth floor is sunny grasslands with comfortable temperatures, the first a megatropolis with buildings so high they block out the sky. This place is inhabited by all manner of intelligent species. Don''t worry about not speaking local languages, the towers wonkyness translates for you, kind of like the babel fish from Hitchiker''s guide to the galaxy.', 2, 1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Ashalla', 'Ashalla is the capital of Bajor, previously occupied by the Cardassians. It is the most important city in all of Bajor and contains the Shikina Monastery, a wonderful place to relax and heal if that''s what you''re looking for in a vacation. The climate is mild, and pleasant to visit any time of year.', 2, 1);
INSERT INTO [FantasyTravel].[Places] (Name, Description, Language, BiomeType) VALUES ('Deep Space Nine', 'Deep Space Nine is a space station in the bajorian system. It contains a reputable gambling establishment where you can play all the dabo you want or visit a holosuite. There''s plenty of traders on the promenade, and if you''re lucky you''ll be able to witness the only known stable wormhole in the galaxy open! If you''re looking to commit any crimes, I advise you to find a different station. The Constable here can take any form, and is always vigilant!', 3, 4);
GO
/*
    QUERYING
*/
SELECT * FROM [FantasyTravel].[Places];
GO

SELECT * FROM [FantasyTravel].[Biomes];
GO