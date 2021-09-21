# Project 1, Iteration 3: Titles and Animation
Third iteration of CS315 Project 1 by Landon Hammond.  
Attempt to hit the enemy airships with your trusty mechanical frogs to push back the rival castle invaders.
### Controls:
* Increase projectile angle: "up" or "w"  
* Decrease projectile angle: "down" or "s"  
* Increase projectile strength "right" or "d"  
* Decrease projectile strength "left" or "a"  
* Launch projectile: "spacebar"  
* Defend! and Return To Title! buttons can be clicked via mouse, or are connected to "d" and "r" respectively.
* There is a 50% chance each turn that an extra life may spawn (Unless one is already on screen).
Hit it with your frog to collect it!
## Project Report
### Reflection
I found everything that needed to be done for iteration three to be pretty simple and straightforward. 
Most of my struggles this iteration came from personal features I wanted to add on my own. 
One such example being the extra life mechanic and those assoicated with it. 
The biggest issue I had with the extra life system was actually playing the pickup sound. 
It turned out that the sound was not playing because the instance of the life was being freed before the sound had a chance to play. 
I added a short delay in order to give the sound time to play and that fixed the issue.
I am somewhat unconfident in my ability to understand and follow the style guide, but I feel like I did a pretty good job combing through and refactoring my code.
I really enjoyed being able to make music and sound effects for the project and am quite proud of the little loop I slapped together for the main theme.
I feel as though seeing your own assets moving, playing, and colaborating with your programming adds an extra layer of satisfaction to the finished product.
### Self-Evaluation
- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The game starts on a title screen. Interacting with the title screen moves the player into the gameplay screen.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: Earn one star.
- [X] A-1: Earn three stars.
- [X] ⭐ When the game is over, the player can interact to take the game back to the title screen, from which the game can be played again.
- [X] ⭐ Use an <code>AnimationPlayer</code> or <code>Tween</code> to add some pop to the user-interface.
- [X] ⭐ The source code complies with our adopted style guide.

With the completion of the README and tagging for release, I believe I have fully completed everything needed to earn an A for iteration three of project 1.

## Third-Party Assets
[Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P#standard-styles), licensed under [SIL Open Font License (OFL)](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)