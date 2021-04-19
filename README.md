# README

This project is a simple organization app that was also a lesson in polymorphism!

The basic idea behind this app was to provide something that people could use in order to keep track of notes and photos, albeit temporarily. This is not meant as a long-term storage solution - more a place to keep one off ideas/photo downloads until a user finds a more permanent place for them.

User can crate one of four post-types:

**Journal**

-Users can create a text post in order to catalogue any great dieas they ahve through a day! This idea is actually what spurred me to create this app in the first place.

I have a stunning propensity to write down an idea on a piece of paper, and then prompty lose that piece of paper. With this app, I wanted to give users a 
place to store those ideas/blurbs so they don't lose them!

**Photo**

-Users can upload photos to store them until they're able to put them in their favorite permanent storage location.

**To-Do**

-This on is pretty self-explanatory - users can create To-Do items! This feature was built out using ActionText in order to provide full WYSYWIG functionality and text markup. 

**Calendar**

-Using the Simple Calendar gem, users have access to a monthly calendar that they can add appointments to in roder to keep track of events! It's very minimal in its styling, but the functionality is there and provides uers a way to keep track of any events.

After getting the base functionality set up, I set out to add a tagging and search functionality. Through the use of polymorphic model associations, I was able to make every type of post "taggable". A user can provide a comma separated list of tags they wish to add to a post, and then later search *for* that tag and, as a result, be shown every one of their posts where that tag is attached.

To get this functionality working, I used some namespacing of my routes and controllers. Each controller has a corresponding namespaced tags controller (JournalsController has a corresponding Journal::TagsController, for instance) that all inherit from the main TagsController. These namespaced controllers exist solely to find and set the taggable object to be used by the views/controllers. I really learned a lot while building this project and it was a lot of fun to put together!

This project also turned out to be a painful and well-learned lesson in using the same database schema for development and production. Initially, I had it setup to use Sqlite3 in development and Postgresql in production (to satisfy Heroku's database conditions) and, as you can guess, this broke some of my migrations when
migrating to Heroku. Having to go back and try everything under the sun to make it work in production is not something I ever want to repeat - Postgresql taught me a very valuable lesson that day.
