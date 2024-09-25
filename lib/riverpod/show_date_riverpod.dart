import 'dart:math';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../model/date model/show_date_model.dart';

class ShowDateRiverpod extends StateNotifier<List<ShowDateModel>> {
  ShowDateRiverpod()
      : super([
          ShowDateModel(
            title: "Hiking",
            description:
                "Taking a walk away from the city in nature's embrace can refresh you both physically and mentally. A walk in a nearby park or forest allows you to breathe fresh air, connect with nature, and escape from daily stress. During the walk, you can listen to the chirping of birds, explore the beauty of nature, and spend quality time with loved ones.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Camping",
            description:
                "Camping is an excellent way to immerse yourself in nature and disconnect from daily routines. It offers a chance to enjoy the outdoors, experience new environments, and bond with others. Whether you’re setting up a tent in a forest or enjoying a campfire under the stars, camping can provide a refreshing break from everyday life.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Cycling",
            description:
                "Cycling is a great way to stay active and explore new areas. It combines exercise with the joy of discovering different landscapes and can be a fun, eco-friendly mode of transportation. Whether you're cycling through city streets or rugged trails, it offers both physical benefits and a sense of adventure.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Extreme Sports",
            description:
                "Extreme sports offer adrenaline-pumping experiences and push physical and mental limits. Activities like skydiving, rock climbing, or surfing can provide thrilling challenges and a sense of accomplishment. Engaging in extreme sports often requires skill, training, and a passion for adventure.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Watching the Stars",
            description:
                "Watching the stars is a calming and awe-inspiring activity that connects you with the vastness of the universe. It allows you to appreciate the beauty of the night sky and can be a peaceful way to relax and reflect. Stargazing can also spark curiosity and provide a sense of wonder.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Orienteering",
            description:
                "Orienteering is a journey where the heart leads as much as the compass. It’s an adventure through uncharted paths, where each twist and turn is a shared discovery. Together, you and your partner navigate through the wild, finding your way not just through the forest, but into each other’s hearts.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Horse Riding",
            description:
                "Horse riding is a graceful dance between rider and horse, where trust and harmony create a unique connection. As you ride through open fields or along quiet trails, you feel the gentle rhythm of the horse beneath you, carrying you through nature's beauty. It's a romantic experience that blends adventure with serenity, allowing you to explore the world together in perfect sync.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Night Sky Photography",
            description:
                "Night sky photography is a magical pursuit, capturing the ethereal beauty of the stars and galaxies above. With each click of the camera, you freeze moments of cosmic wonder, turning the vastness of the universe into intimate memories. It's a romantic endeavor that allows you to share the stillness of the night, capturing the infinite possibilities written across the heavens.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Camping by the Lake",
            description:
                "Camping by the lake is a serene escape, where the gentle lapping of water sets a peaceful rhythm to your days and nights. As you set up camp, the reflection of the stars on the calm surface of the lake creates a mesmerizing backdrop. Evenings by the campfire, with the soft glow of the moon and the whisper of the wind through the trees, offer moments of quiet connection and deep relaxation, making it a truly romantic retreat in nature's embrace.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Going to the Beach",
            description:
                "Going to the beach is a romantic getaway where the sun, sand, and sea create a perfect blend of relaxation and joy. Walking hand in hand along the shore, feeling the warm sand beneath your feet and the gentle waves kissing the coastline, brings a sense of tranquility and togetherness. Whether it's watching the sunset paint the sky with vibrant hues or sharing quiet moments as the waves lap at the shore, the beach offers a beautiful setting for love and connection.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Kite Flying",
            description:
                "Kite flying is a playful and enchanting experience, where you feel the joy of the wind lifting your spirits along with the kite. As you and your partner guide the colorful kite through the sky, there's a sense of freedom and lightness that fills the moment. The simple pleasure of watching it dance against the backdrop of a clear blue sky creates a shared memory of carefree happiness, turning an ordinary day into a delightful adventure.",
            category: "Nature and Outdoor Activities",
          ),
          ShowDateModel(
            title: "Visiting a Museum or Exhibition",
            description:
                "Visiting a museum or exhibition is a journey through art, history, and culture, where every exhibit tells a story that sparks curiosity and wonder. As you wander through the galleries, hand in hand, you share discoveries and moments of reflection, deepening your connection. The quiet, contemplative atmosphere allows you to explore not only the artifacts on display but also each other's thoughts and perspectives, making it a meaningful and enriching experience.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Arts and Crafts",
            description:
                "Arts and crafts offer a creative escape where imagination flows freely, and hands bring ideas to life. Engaging in these activities together fosters a deep sense of connection as you collaborate on projects, share inspiration, and admire each other's creations. Whether you're painting, sculpting, or crafting something unique, the process becomes a shared journey of self-expression and joy, turning simple materials into meaningful memories.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Listening to Live Music",
            description:
                "Listening to live music is an intimate experience where the rhythm and melodies create an emotional connection. As the music fills the air, you and your partner can lose yourselves in the moment, letting the sounds weave a shared narrative of feelings and memories. ",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Picture Gallery Visit",
            description:
                "A picture gallery visit allows you to explore various art forms and appreciate the creativity and talent of artists from different eras. Strolling through the gallery with your partner, you can discuss your interpretations of the artwork, making it a meaningful and inspiring experience. The quiet ambiance and beautiful visuals create a perfect setting for a thoughtful and romantic outing.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "History Tour",
            description:
                "Visiting local historical sites and monuments offers a meaningful connection to the area's heritage and culture. Exploring these landmarks together allows you to delve into the stories that have shaped the community, providing a deeper appreciation of the local history. As you wander through these sites, you share moments of discovery and reflection, enriching your understanding of the past while strengthening your bond through a shared journey.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Opera",
            description:
                "Attending an opera is a night of elegance and enchantment, where the soaring arias and dramatic scenes weave a tapestry of romance and passion. As you sit together in the opulent surroundings, the music and the performers transport you to a world of timeless love and grandeur. The shared experience of watching a poignant love story unfold on stage, with the lights dimmed and the melodies filling the air, creates a magical bond, making the evening a cherished memory of heartfelt connection.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Historical Train Tour",
            description:
                "A historical train tour is a romantic voyage through time, where the rhythmic clatter of the train tracks and the scenic views combine to create a nostalgic escape. As you travel together through charming landscapes and historic routes, you immerse yourselves in the stories of the past while enjoying each other's company. The slow pace and picturesque settings allow for intimate conversations and moments of shared wonder, turning the journey into a treasured experience of discovery and connection.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Costume Party",
            description:
                "A costume party is a whimsical and playful celebration where creativity and imagination take center stage. As you and your partner don elaborate outfits and step into different personas, the evening becomes a delightful adventure of shared fun and laughter. The joy of transforming into characters and mingling with others in a festive atmosphere adds an element of surprise and romance, creating unforgettable memories and deepening your connection through a night of playful escapades.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Watching a Historical Movie or Documentary",
            description:
                "Watching a historical movie or documentary is a captivating experience that transports you to different eras and stories. As you and your partner share this visual journey through history, you delve into the past and uncover fascinating narratives together. ",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
            title: "Origami",
            description:
                "Origami is a delicate art form that invites you to transform simple paper into intricate creations. As you fold and shape the paper together, you share a creative process that combines patience, precision, and imagination. The joy of seeing your creations come to life, along with the peaceful focus of the activity, offers a unique way to bond and appreciate the beauty of craftsmanship.",
            category: "Cultural and Artistic Activities",
          ),
          ShowDateModel(
              title: "Picnic",
              description:
                  "A picnic is a tender and enchanting retreat where nature sets the stage for romance. As you lay out a blanket under the shade of a tree, the world seems to slow down, allowing you to savor every moment together. The gentle breeze, the warmth of the sun, and the soft rustle of leaves create a serene backdrop as you share a meal filled with love and laughter. With each bite and whispered word, the connection deepens, turning a simple outing into a cherished memory of togetherness and affection.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Movie Night",
              description:
                  "A movie night is a cozy and intimate way to unwind and connect with someone special. As you snuggle up together under a blanket, the flickering screen brings stories to life, setting the mood for a shared experience of laughter, suspense, or romance. The comfort of being close, the warmth of shared moments, and the joy of escaping into a movie together make a movie night a perfect blend of relaxation and connection.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Amusement Park",
              description:
                  "An amusement park visit is a thrilling and joyful adventure, where excitement and laughter fill the day. As you and your partner explore the park, from heart-racing rides to playful games, every moment becomes a shared experience of fun and exhilaration. The ups and downs of roller coasters, the sweet treats, and the festive atmosphere create a lighthearted and romantic escape, turning the day into a whirlwind of memories and smiles.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Game Night",
              description:
                  "A game night is a fun and engaging way to connect, where friendly competition and laughter set the tone for the evening. Whether you're playing board games, card games, or video games, each round brings moments of strategy, surprises, and playful banter. The shared experience of trying to outwit each other or working as a team adds a spark of excitement, making the night both entertaining and a great way to strengthen your bond through shared joy and camaraderie.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Bowling",
              description:
                  "Bowling is a playful and lively outing where friendly competition meets casual fun. As you take turns aiming for strikes, the lighthearted atmosphere creates moments of laughter and celebration. The shared cheers for each roll, the playful teasing, and the joy of hitting those pins together make bowling a delightful way to connect. It's a perfect mix of fun and relaxation, turning a simple game into a memorable experience filled with smiles and shared victories.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Karting",
              description:
                  "Karting is an exhilarating and adrenaline-fueled adventure that brings out the thrill of friendly competition. As you and your partner race around the track, the excitement of sharp turns and the rush of speed create an electrifying atmosphere. The playful rivalry and the shared joy of zooming past each other make karting a fun and dynamic way to bond, turning the race into a spirited and unforgettable experience.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Escape Room",
              description:
                  "An escape room is an exciting and immersive adventure where teamwork and clever thinking take center stage. As you and your partner work together to solve puzzles and uncover clues, the tension and excitement build, drawing you closer with each discovery. The thrill of racing against the clock, combined with the satisfaction of overcoming challenges as a team, creates a uniquely bonding experience. It’s a perfect blend of fun, mystery, and shared accomplishment, making the escape room an unforgettable way to connect.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Lazer Tag",
              description:
                  "Laser tag is an action-packed and thrilling experience where strategy and teamwork come to life in a high-energy environment. As you and your partner navigate the darkened arena, dodging laser beams and planning your next move, the excitement of the game draws you into a playful world of adventure. The rush of the chase, the shared victories, and the laughter that comes with friendly competition make laser tag a fun and dynamic way to connect, turning the game into an exhilarating and memorable experience.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Virtual Reality Games",
              description:
                  "Virtual reality games offer a futuristic and immersive adventure where you and your partner can step into entirely new worlds together. As you both don VR headsets, reality fades, and you're transported to fantastical landscapes, epic battles, or serene environments. The thrill of exploring these digital realms side by side, sharing in the excitement and surprises, makes the experience intensely engaging. Whether you're teaming up to conquer challenges or simply enjoying the wonder of virtual exploration, VR games create unforgettable moments of connection in a vividly imagined world.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Paintball",
              description:
                  "Paintball is a high-energy and exhilarating adventure where strategy, teamwork, and a bit of friendly competition blend seamlessly. As you and your partner dive into the game, navigating through the field and dodging paintballs, the adrenaline and laughter create a dynamic and unforgettable experience. The shared thrill of strategizing, the rush of excitement, and the playful camaraderie turn paintball into a vibrant and engaging way to bond, making each match a memorable escapade.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Water Park",
              description:
                  "A visit to a water park offers a fun and refreshing escape. With exhilarating water slides, wave pools, and playful water games, you and your partner can enjoy a day full of excitement and relaxation. Splashing around under the sun and creating joyful memories together turns the experience into a delightful and unforgettable adventure, making each moment a shared celebration of fun and connection.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Skating",
              description:
                  "Skating is a vibrant and exhilarating activity where freedom and grace come together. As you and your partner glide across the rink or pavement, the wind in your hair and the rhythm of your movements create a joyful and intimate experience. Whether you’re navigating turns or sharing playful moments, skating offers a blend of excitement and connection, turning each session into a cherished memory of fun and shared adventure.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Comedy Club",
              description:
                  "A comedy club visit offers an experience filled with laughter and fun. As you and your partner enjoy live performances and the comedians' jokes, you’ll share in the joy of hearty laughter. The intimate setting, combined with the humor, makes the experience memorable and strengthens your connection through shared moments of delight.",
              category: "Entertainment and Recreation"),
          ShowDateModel(
              title: "Romantic Dinner",
              description:
                  "A romantic dinner offers an evening of elegance and intimacy. As you dine by candlelight at a beautifully set table, each bite and conversation becomes even more special. The combination of exquisite dishes and meaningful dialogue deepens romance and connection, making the night truly unforgettable.",
              category: "Romantic and Special Moments"),
          ShowDateModel(
              title: "Remembering Memories of Meeting",
              description:
                  "Remembering memories of meeting brings back the special moments and emotions you shared. Reflecting on your initial encounters, enjoyable times together, and the feelings you experienced makes those memories even more valuable over time. Revisiting these memories strengthens your bond and brings the beauty of the past into the present.",
              category: "Romantic and Special Moments"),
          ShowDateModel(
              title: "Cinema",
              description:
                  "Cinema offers a captivating experience where you can spend time together. Watching a film in a cozy theater, with the magic of the screen and the depth of the story, strengthens your connection. The shared emotions and reactions during the movie make the experience special and create unforgettable moments together.",
              category: "Romantic and Special Moments"),
          ShowDateModel(
              title: "Nightclub",
              description:
                  "A nightclub offers a lively atmosphere for a fun and energetic experience. Amidst colorful lights, live music, and dancing, you and your partner can enjoy the rhythm together, making the night even more special. The vibrant environment and dynamic music turn your shared moments and dancing into unforgettable memories.",
              category: "Romantic and Special Moments"),
          ShowDateModel(
              title: "Cooking",
              description:
                  "Cooking together is a creative and enjoyable activity that brings you closer. As you experiment with new recipes and prepare meals in the kitchen, it strengthens your bond. The shared joy and satisfaction with each step of the process make the experience special, adding a touch of warmth and connection to your time spent together.",
              category: "Romantic and Special Moments"),
          ShowDateModel(
              title: "Tennis",
              description:
                  "Tennis is an energetic and exciting sport that’s a great way to spend time together and have fun. The time spent on the court, requiring strategy and coordination, strengthens both mental and physical connections. The competition and shared successes during matches make the experience both dynamic and romantic.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Badminton",
              description:
                  "Badminton is a fast-paced and enjoyable sport that lets you relish movement and friendly competition together. The time spent on the court strengthens your connection both physically and mentally, allowing you to enjoy working together. This energetic game offers a chance for cheerful rivalry and fun memories.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Healthy Living Program",
              description:
                  "A healthy living program is a comprehensive approach that supports your health and overall well-being. Including exercise, balanced nutrition, and mental wellness, this program helps you lead a healthier life together. Shared goals and achievements make the process more motivating and satisfying.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Marathon or Running",
              description:
                  "Marathon or running is an experience that tests both physical and mental endurance. Participating in such an event together helps set common goals and boosts motivation. The shared challenges and achievements during the run strengthen your bond and make the journey more meaningful and unforgettable.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Bungee Jumping or Zipline",
              description:
                  "Bungee jumping or ziplining are thrilling adventures that combine excitement and adrenaline. These extreme activities test your courage and trust, while the exhilarating moments you share strengthen your bond. Jumping from great heights or gliding quickly creates unforgettable experiences and allows you to build special memories with your shared bravery.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Golf or Mini Golf",
              description:
                  "Golf or mini golf offers a relaxing and enjoyable way to spend time together with a touch of friendly competition. On the golf course or mini golf course, these games require strategy and skill, providing both fun and a chance to unwind. Shared goals and successes make the experience more special and meaningful.",
              category: "Sports and Physical Activities"),
          ShowDateModel(
              title: "Taking Classes",
              description:
                  "Taking classes in photography, playing a musical instrument, or learning a new language offers opportunities for personal growth and acquiring new skills. Attending these classes together allows you to explore shared interests and learn new things. The shared experiences and achievements during the learning process strengthen your bond and make the experience more meaningful.",
              category: "Education and Learning"),
          ShowDateModel(
              title: "Learning a New Language",
              description:
                  "Learning a new language offers a rich experience that enhances your cultural understanding and supports personal growth. Learning a language together allows you to set common goals and progress with mutual support. The achievements and discoveries in the language learning process strengthen your bond and make the experience more enjoyable and meaningful.",
              category: "Education and Learning"),
          ShowDateModel(
              title: "Survival Training",
              description:
                  "Survival training is an experience that develops skills for handling challenges in nature and promotes teamwork. The difficulties and successes you encounter during this training allow you to work together and support each other. The challenging process in the wilderness strengthens your bond and helps you create unforgettable memories.",
              category: "Education and Learning"),
          ShowDateModel(
              title: "Astronomy Course",
              description:
                  "An astronomy course allows you to explore the mysteries of the universe and gain in-depth knowledge about stars and planets. Taking this course together helps you discover a shared interest and learn more about the cosmos. The discoveries and learning moments during the course strengthen your bond and make the experience more meaningful.",
              category: "Education and Learning"),
          ShowDateModel(
              title: "Vacation Planning",
              description:
                  " Vacation planning is the process of preparing for a delightful and unforgettable getaway together. Researching travel destinations, evaluating accommodation options, and planning activities allow you to make joint decisions and build excitement. This process strengthens your communication and ensures that your vacation is more enjoyable and seamless.",
              category: "Education and Learning"),
          ShowDateModel(
              title: "Animal Shelter Visit",
              description:
                  "An animal shelter visit offers the joy of helping and spending time with street animals. Caring for the animals in the shelter, feeding them, and playing with them provides an emotionally rewarding experience and strengthens your bond. This visit allows you to share the happiness of working towards a common purpose and connecting with animals.",
              category: "Social and Volunteer Activities"),
          ShowDateModel(
              title: "Farm Visit",
              description:
                  "A farm visit offers the chance to experience rural life and connect with nature. Spending time with farm animals, harvesting fresh produce, and observing agricultural processes provide a fun and educational experience. This visit allows you to explore the beauty of nature and strengthens your bond.",
              category: "Social and Volunteer Activities"),
          ShowDateModel(
              title: "City Tour",
              description:
                  "A city tour offers the pleasure of exploring a city's cultural and historical richness. Visiting local landmarks, important sites, and experiencing the city's atmosphere create new and meaningful memories together. This tour allows you to experience the character and beauty of the city as a shared adventure.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Shopping",
              description:
                  "Shopping offers a fun and social experience to enjoy together. Exploring stores, discovering new products, and spending time shopping provides both entertainment and an opportunity to bond. This process helps you understand each other’s tastes and preferences, strengthening your connection.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Flea Market",
              description:
                  "Visiting a flea market offers a nostalgic shopping experience where you can discover unique and vintage items. Exploring various stalls, examining interesting objects, and bargaining for deals makes it both fun and educational. This type of visit allows you to enjoy the process of discovery and spending time together.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Antique Market",
              description:
                  "Visiting an antique market offers the opportunity to explore historic and valuable items. Wandering among old and rare finds, examining unique pieces, and discovering artifacts rich in history provides both enjoyment and cultural enrichment. This visit allows you to share the pleasure of uncovering traces of the past together.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Exploring Unknown Places",
              description:
                  "Exploring unknown places offers an adventure-filled experience. Traveling through new and uncharted areas, encountering unique landscapes and surprises, helps you create exciting and unforgettable memories. This type of exploration strengthens your bond and allows you to enjoy the thrill of discovering new places together.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Farmers' Markets",
              description:
                  "Farmers' markets offer the chance to discover fresh, local products and experience rural life. Exploring fruits, vegetables, and handmade goods from local producers provides a delicious and healthy shopping experience. These market visits allow you to enjoy a day filled with natural products and the pleasure of discovering together.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Exploring Unique Cafés and Restaurants",
              description:
                  "Exploring unique cafés and restaurants offers the opportunity to experience diverse atmospheres and innovative menus. Dining in different venues and trying various flavors enriches your culinary experiences and provides an enjoyable discovery adventure. These visits allow you to explore shared tastes and discover new preferences together.",
              category: "Shopping and Discovery"),
          ShowDateModel(
              title: "Creating Artwork",
              description:
                  "Creating artwork is a wonderful way to express your creativity and experience an aesthetic journey. Working together on painting, sculpting, or other art forms provides both fun and a way to strengthen your bond. This process allows you to showcase your shared creativity and build beautiful memories.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Assembling Puzzles or Building with Lego",
              description:
                  "Assembling puzzles or building with Lego is a fun activity that enhances problem-solving and cognitive skills together. Completing a structure or picture by putting pieces together provides a satisfying and enjoyable experience. These activities allow you to set common goals and spend quality time together.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Storytelling Night",
              description:
                  "A storytelling night is a delightful way to share your creativity and imagination. Telling stories to each other, sharing anecdotes, and showcasing your imagination creates a warm and intimate atmosphere. This activity allows you to build shared memories and strengthen your bond.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Model Building",
              description:
                  "Model building is a detailed and creative process that offers a chance to spend time together and enhance your craftsmanship. Constructing models requires both patience and creativity, and the finished piece is a product of your efforts. This activity allows you to work on a joint project and achieve a successful outcome together.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Soap or Candle Making",
              description:
                  "Soap or candle making offers a creative experience with handmade products and provides a chance to spend time together. Designing and crafting soaps or candles adds both fun and a personal touch. This process allows you to work on a joint creative project and share the results.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Creating a Vision Board",
              description:
                  "Creating a vision board is a process of visualizing your goals and dreams. By coming together to compile images, inspirational visuals, and motivational quotes, you can create a personal vision of your aspirations. This activity helps you set shared goals and share your hopes for the future.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Writing a Fairy Tale or Story",
              description:
                  "Writing a fairy tale or story is a wonderful way to express creativity and work on an enjoyable project together. Creating a shared narrative, developing characters, and crafting events provides both fun and a way to strengthen your bond. This process allows you to enhance your collaboration and storytelling skills.",
              category: "Mental and Creative Activities"),
          ShowDateModel(
              title: "Photography Excursion",
              description:
                  " A photography excursion offers an artistic experience while exploring your surroundings and capturing beautiful landscapes. Visiting different locations to take photos provides both creative and visually satisfying moments. The shared experiences and captured shots during this excursion help you build lasting memories together.",
              category: "Activities Full of Nostalgia and Memories"),
          ShowDateModel(
              title: "Creating a Photo Album",
              description:
                  "Creating a photo album is a great way to organize your memories and craft a visual story. Selecting, arranging, and compiling photos together provides a joyful way to revisit and share past moments. This process strengthens your bond and immortalizes your special memories.",
              category: "Activities Full of Nostalgia and Memories"),
          ShowDateModel(
              title: "Sharing Childhood Memories",
              description:
                  "Sharing childhood memories offers the pleasure of revisiting sweet and unforgettable moments from the past while getting to know each other better. Talking about old games, friends, and family memories provides both fun and emotionally bonding experiences. This sharing strengthens your connection and allows you to celebrate your shared past.",
              category: "Activities Full of Nostalgia and Memories"),
          ShowDateModel(
              title: "Historical Sites Tour",
              description:
                  "A historical sites tour offers the joy of exploring traces of the past and learning about historic locations. Visiting significant monuments, buildings, and historical areas provides both educational and inspiring experiences. This tour allows you to develop a shared understanding of history and discover cultural richness together.",
              category: "Activities Full of Nostalgia and Memories"),
          ShowDateModel(
              title: "Watching a Historical Movie or Documentary",
              description:
                  "Watching a historical movie or documentary is an effective way to understand past events and cultural stories. Watching historical films or documentaries together provides intriguing insights and allows for in-depth discussions and analysis. This activity helps you build a shared knowledge of history and offers an enjoyable learning experience.",
              category: "Activities Full of Nostalgia and Memories"),
        ]);

  ShowDateModel getRandomActivity() {
    final random = Random();
    int index = random.nextInt(state.length);
    return state[index];
  }
}

final showDateRiverpodProvider =
    StateNotifierProvider<ShowDateRiverpod, List<ShowDateModel>>(
        (ref) => ShowDateRiverpod());
