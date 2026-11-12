# Unreal Estate
## Rishi Aitha
### Milestone 1

#### Controls
- Navigating the menus is possible mostly with START and SELECT
- From main menu: START to play, SELECT for instructions
- From instructions: START to play, SELECT for main menu
- From game: SELECT for pause
- From pause: SELECT for game
- From win: START for main menu
- To win: press A while the top middle of the player is intersecting with any of the green tiles (they are a bit obscured, I will adjust the drawing accordingly)
    - Essentially you are selecting the house, once more logic is done this would be your "guess" for counting score

#### What I've Finished
- I have set up a basic state machine (accounting only for one level and no "story" menus for now, as suggested)
- The player can move around
    - Attacks were mentioned in my document but I haven't planned on any attacks just yet
    - I chose not to do anything of that sort for now since honestly I'd rather have (for now) just hazards and no attacks
    - The player already has to focus on the different house designs and their score and stuff
- The collision map keeps the player in bounds
    - With some issues: I am aware that the player can overlap on the sides of houses since only corners are checked, I'll add some more collision checks
- Basic house randomization
    - I have tried a few different approaches to this, and this is my main pending question:
    - I am currently just having a set number of houses (this will change to include different sized ones)
    - And they are each 4 sprites each representing the different components of the buildings
    - There is still a lot of work to do here
    - If I want a scrolling background, 
        - I'd probably need to either create all the houses in the spritesheet or create them with background tile modification
        - I do quite like these ideas as they bring interesting technical complexity but I don't want to start and rely on that yet
    - There are also some bugs here (mentioned later)

#### Bugs
- Player collision needs more points handled since the player size is larger than a tile so it goes through some colliision map sections.
- Some components of the houses aren't appearing (to be honest, this should be minor but I can't be bothered right now)
- The houses can have duplicates

#### To-do
- Bug fixes, of course
- Handle having a "correct" house
- Create scoring and timer system, and win condition (maybe high score?)
- Set up multi-size randomization
- Start on some slightly better sprites and backgrounds

#### Questions
- The primary question I have right now is: is it required that I have an oversized/scrolling background?
    - In that case, I'll need to re-consider the randomization system
    - This would add cool complexity technically that I think I can probably manage
    - but could make gameplay a little slower since you'd have to drive around looking for offscreen houses :/
