DROP DATABASE IF EXISTS bd_prj;
CREATE DATABASE bd_prj ;
USE bd_prj;

drop table if exists USERS ;
drop table if exists  BASKET ;
drop table if exists BASKET_LINE ;
drop table if exists BOOK ;

create table USERS
(
    user_id      	INT NOT NULL,
    NAME            VARCHAR(50) NOT NULL,
    LAST_NAME       VARCHAR(50) NOT NULL,
    LOGIN           VARCHAR(50) NOT NULL,
    PROFIL  		VARCHAR(20) NOT NULL,
    constraint PK_USERS primary key (user_id)
) engine = InnoDB;

create table BASKET
(
    basket_id      INT NOT NULL,
    user_id        INT NOT NULL,
    CREA_DATE      datetime NOT NULL,
    constraint PK_BASKET primary key (basket_id)
) engine = InnoDB;

create table BASKET_LINE
(
	basket_li_id	INT NOT NULL,
    basket_id		INT NOT NULL,
    qte				INT NOT NULL,
    book_id			INT NOT NULL,
    constraint PK_BASKET_LINE primary key (basket_li_id)
) engine = InnoDB;

create table BOOK
(
	book_id			INT NOT NULL,
    title			VARCHAR(100) NOT NULL,
    image			varchar (150),
    author			VARCHAR(50) NOT NULL,
    publi_date		smallint,
    description		VARchaR (2000) NOT NULL,
    stock			INT,
    qty_taken		INT,
    constraint PK_BOOK primary key (book_id)
) engine = InnoDB;

INSERT INTO BOOK(book_id, title, image, author, publi_date, description, stock, qty_taken)
	VALUES  (0, "To Paradise", "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1628100349i/57739876.jpg", "Hanya Yanagihara", 2022, "Stares at human while pushing stuff off a table slap kitten brother with paw and meow meow you are my owner so here is a dead rat meow meow you are my owner so here is a dead bird so if it smells like fish eat as much as you wish. Spot something, big eyes, big eyes, crouch, shake butt, prepare to pounce morning beauty routine of licking self. Refuse to drink water except out of someone's glass find box a little too small and curl up with fur hanging out enslave the hooman kitty time cough hairball on conveniently placed pants but enslave the hooman sugar, my siamese, stalks me (in a good way), day and night . Cat fur is the new black licks paws have my breakfast spaghetti yarn. Always ensure to lay down in such a manner that tail can lightly brush human's nose jump on fridge yet touch water with paw then recoil in horror murf pratt ungow ungow so intrigued by the shower, but i bet my nine lives on you-oooo-ooo-hooo for ccccccccccccaaaaaaaaaaaaaaatttttttttttttttttssssssssssssssss.,", 5, 0),
			(1, "The School for Good Mothers", "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1628100349i/57739876.jpg", "Jessamine Chan",2022, "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Iaculis urna id volutpat lacus laoreet non curabitur gravida arcu. Enim diam vulputate ut pharetra sit amet aliquam id diam. Sit amet nulla facilisi morbi tempus iaculis urna id. Interdum velit laoreet id donec ultrices tincidunt. Augue eget arcu dictum varius duis at consectetur lorem. Quisque egestas diam in arcu cursus euismod. Duis at consectetur lorem donec. Sodales ut etiam sit amet nisl purus in. Posuere lorem ipsum dolor sit. Id nibh tortor id", 2, 0),
            (2, "Love on the Brain", "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1642069168i/59571699.jpg", "Ali Hazelwood", 2022, "Scratch leg; meow for can opener to feed me only use one corner of the litter box chase dog then run away meow loudly just to annoy owners, and allways wanting food stinky cat for i like to spend my days sleeping and eating fishes that my human fished for me we live on a luxurious yacht, sailing proudly under the sun, i like to walk on the deck, watching the horizon, dreaming of a good bowl of milk. Swat turds around the house what the heck just happened, something feels fishy so do i like standing on litter cuz i sits when i have spaces, my cat buddies have no litter i live in luxury cat life favor packaging over toy so lick human with sandpaper tongue. Always hungry i bet my nine lives on you-oooo-ooo-hooo and the dog smells bad plan your travel for shake treat bag, but in the middle of the night i crawl onto your chest and purr gently to help you sleep.", 0, 0),
            (3, "Black Cake", "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1623664615i/57926137.jpg", "Charmaine Wilkerson", 2022, "Famous for its uniquely dense texture, dark color, rich and robust taste; this is the cake that takes the cake. This beloved rum soaked fruit cake is highly revered and sought after during Christmas time as well as weddings and celebrations. If you've never had this cake, at first glance it may resemble that of a chocolate cake, but the deep dark color comes from the main ingredient- dried macerated fruits. Prunes, currants, raisins, and glaced cherries are chopped finely then soaked in red wine and dark rum for months and years on end. The fruit mixture is added to cake batter along with aromatic flavorings and warm spices. When baking, my home is fragranced with the cake's citrusy notes. It smells like Christmas is in the air.", 10, 0),
            (4, "Daughter of the Moon Goddess (The Celestial Kingdom Duology, #1)", "https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1627686439i/57789637.jpg", "Sue Lynn Tan",2022, "A natural satellite is, in the most common usage, an astronomical body that orbits a planet, dwarf planet, or small Solar System body (or sometimes another natural satellite). Natural satellites are often colloquially referred to as moons, a derivation from the Moon of Earth.In the Solar System, there are six planetary satellite systems containing 207 known natural satellites altogether. Seven objects commonly considered dwarf planets by astronomers are also known to have natural satellites: Orcus, Pluto, Haumea, Quaoar, Makemake, Gonggong, and Eris.", 7, 0),
            (5, "People We Meet on Vacation", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5U1-kQrigJMAZjQDtd68oY5Zn-x99cAOnpJJc9MznvKpueumlYDWCnw&s=0", "Emily Henry", 2021, "Poppy and Alex. Alex and Poppy. They have nothing in common. She’s a wild child; he wears khakis. She has insatiable wanderlust; he prefers to stay home with a book. And somehow, ever since a fateful car share home from college many years ago, they are the very best of friends. For most of the year they live far apart—she’s in New York City, and he’s in their small hometown—but every summer, for a decade, they have taken one glorious week of vacation together.", 3, 0),
            (6, "Memorial", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTKwXDla5vmDPZt-xudm9mcC_U_GLX4ZBB6WAquXs2RMkwW_TDjnNg9A&s=0", "Bryan Washington", 2020, "Memorial - Bryan WashingtonMemorial is the debut novel by Bryan Washington.It was published by Riverhead Books on October 27, 2020, to acclaim from book critics. In December 2020, Emily Temple of Literary Hub reported that the novel had made 14 lists of the best books of 2020.", 1, 0),
            (7, "I was here", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-zh5TCZKs9YLa1PR6yR0R0qWodmuWX_RXjc4qop48ecKVJ0FIqizE&s=0", "Gayle Forman", 2015, "When her best friend Meg drinks a bottle of industrial-strength cleaner alone in a motel room, Cody is understandably shocked and devastated. She and Meg shared everything—so how was there no warning? But when Cody travels to Meg’s college town to pack up the belongings left behind, she discovers that there’s a lot that Meg never told her. About her old roommates, the sort of people Cody never would have met in her dead-end small town in Washington. About Ben McAllister, the boy with a guitar and a sneer, who broke Meg’s heart. And about an encrypted computer file that Cody can’t open—until she does, and suddenly everything Cody thought she knew about her best friend’s death gets thrown into question.", 2, 0),
            (8, "Leave the World behind", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSek_pFrPndsd3lEOjVBEweemjQOMsSolb-Rv_DFA&s=0", "Rumaan Alam", 2020, "Amanda and Clay head out to a remote corner of Long Island expecting a vacation: a quiet reprieve from life in New York City, quality time with their teenage son and daughter, and a taste of the good life in the luxurious home they’ve rented for the week. But a late-night knock on the door breaks the spell. Ruth and G. H. are an older couple—it’s their house, and they’ve arrived in a panic. They bring the news that a sudden blackout has swept the city. But in this rural area—with the TV and internet now down, and no cell phone service—it’s hard to know what to believe.", 5, 0),
            (9, "The Sun and Her Flowers", "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4U2nsUZKD4UUWpnxXH2isEVhOKXoBbB_D1P79fbNhNbAfk15JuG6dPm688Z7a02d1owhb&s=0", "Rupi Kaur", 2017, "this is the recipe of life \nsaid my mother \nas she held me in her arms as i wept \nthink of those flowers you plant \nin the garden each year \nthey will teach you \nthat people too \nmust wilt \nfall \nroot \nrise \nin order to bloom", 6, 0);