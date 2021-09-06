# Project 1, Iteration 1: 2D Physics-Based Gameplay
First iteration of CS315 Project 1 by Landon Hammond

### Controls:
Increase projectile angle: "up" or "w"  
Decrease projectile angle: "down" or "s"  
Increase projectile strength "right" or "d"
Decrease projectile strength "left" or "a"  
Launch projectile: "spacebar"

## Project Report
### Reflection
The lack of a tutorial certainly changes the streamlined feeling of Godot, but with some research and a bit of patience, I managed to navigate through all the requirements for the first iteration of project 1. 
When I was initially thinking about the project, I wanted to have a predictor arc display and update in real time as the user changed the angle and strength of the impulse. 
After working with this idea for a little bit however, I found that too difficult for me to implement, likely due to my lack of experience and understanding of Godot.
After changing gears to a sprite based indicator of angle and strength, I had a much easier time working through the criteria for this week. When the projectile makes contact with the target, a "Hit!" message will appear in the console.

### Self-Evaluation
- [X] D-1: The repository link is submitted to Canvas before the project deadline.
- [X] D-2: The repository contains a <code>README.md</code> file in its top-level directory.
- [X] D-3: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [X] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file and no unnecessary files tracked.
- [X] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, and the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [X] C-3: You have a clear legal right to use all incorporated assets, and the licenses for all third-party assets are tracked in the <code>README.md</code> file.
- [X] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game itself.
- [X] C-5: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of T or less.
- [X] C-6: The player can control the angle at which the projectile is fired.
- [X] C-7: The player can fire the projectile.
- [X] C-8: The projectile's flight is affected by gravity using Godot Engine's physics system.
- [X] C-9: There is a &ldquo;ground&rdquo; that stops the projectile.
- [X] C-10: There is a non-ground target that the projectile can hit.
- [X] B-1: The <code>README.md</code> file contains a personal reflection on the iteration and self-evaluation, as defined above.
- [X] B-2: The projectile's firing angle is clamped between 0&deg; (straight forward) and 90&deg; (straight up).
- [X] A-1: The player can modify the strength of the projectile's firing.
- [X] A-2: There is a visual indicator showing the angle at which the projectile will fire.
- [X] A-3: The projectile's hitting the target is recognized and logged to the console or otherwise indicated.

With the completion of the README and tagging for release, I believe I have fully completed everything needed to earn an A for the first iteration of project 1.

## Third-Party Assets
For the first iteration, I created placeholder assets myself as I intend to focus on the visuals during the next iteration. 
