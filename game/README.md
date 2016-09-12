My web application games is a sort of Game Database/Social site similar to
other game sites such as gamefaqs, gamespot, ign, etc. My motivation behind
this site was to build a website related to one I use all the time and try
to make it better. Obviously I have a long way to go there, but I still have
many ideas I'd like to work with. Essentially all games are added to the 
database by the admin or by a seed. Users are only able to view games,
create guides, reviews, forum topics. They cannot edit or destroy each 
others topics as to be expected. Admin's hold power over everything they can
add, destroy, or edit games, topics, reviews, posts, and add platforms to 
games. Each game has multiple nested entities. Reviews which the user 
writes and scores the game out of 10. Guides are designed to be something 
the user writes a text document of and uploads to the server, when a user 
clicks on the show link it renders the document in the page, similar to how
the site gamefaqs does it.  The final nested entity is the forum which the users can create a topic and posts in each topic. I also have an entity platforms which is not tested into games. A platform can have many games and a 
game can be on many platforms. I set this up similar to image users 
from the image assignment and use this relation ship to display
games by platform. 
Somethine things I'd like to add going forward: 
I would like to add the ability to average all useres scores and show that
score on the games show page not hard, but I ran out of time. 
I would like to find a better way to render text
documents as formatting is strange when using simple format.
I would like to add profiles for users, consiting of pictures, friends, games currently playing, games owned, reviews written, guides written forums created etc.
