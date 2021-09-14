# Project 1, Iteration 2: Graphics and Sound
Second iteration of CS315 Project 1 by Landon Hammond.  
Attempt to hit the enemy airships with your trusty mechanical frogs to push back the evil invaders.  
### Controls:
Increase projectile angle: "up" or "w"  
Decrease projectile angle: "down" or "s"  
Increase projectile strength "right" or "d"  
Decrease projectile strength "left" or "a"  
Launch projectile: "spacebar"  
## Project Report
### Reflection
This iteration was both exciting and somewhat difficult.
That being said, I feel like I put in a good effort and accomplished everything I wanted and needed to.
While creating a collision box that destroyed the projectile if it flew off the screen was quite easy, a very difficult problem I faced this iteration was checking to see if the projectile had landed on the ground and stopped moving. 
I have my projectile set to the character mode of the RigidBody2D, and unfortunately that means it will not sleep if it stops moving. 
I tried changing the mode but could not get the projectile to act how I wanted it to, so I spent time approaching the problem from different angles until I got it to function properly.
Besides the few lines of code that made me scratch my head, I really enjoyed making sprites and sounds for the target and projectile.
At first I was going to make the projectile fire out of a cannon, but with the way I had already set it up I decided that instead it would be easier to make the projectile move on its own. 
The idea that unintentionally followed was that of a robot frog; and I actually really enjoy the way it turned out!
### Self-Evaluation
- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The projectile and targets are shown with 2D graphics.
- [X] C-7: The game plays an appropriate sound effect when the projectile is fired.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: Earn one star.
- [X] A-1: Earn three stars.
- [X] ⭐ The player has a small inventory of projectiles, and only one can be launched at a time.
- [X] ⭐ The background and ground use 2D graphics.
- [X] ⭐ A <abbr title="Heads-Up Display">HUD</abbr> shows the current game state such as the score and number of projectiles remaining.

With the completion of the README and tagging for release, I believe I have fully completed everything needed to earn an A for iteration two of project 1.

## Third-Party Assets
[Press Start 2P](https://fonts.google.com/specimen/Press+Start+2P#standard-styles), licensed under [SIL Open Font License (OFL)](https://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&id=OFL)