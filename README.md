# Project 2, Iteration 1:

An implementation of KinematicBodies2D in Godot for Project 2, Iteration 1 of CS 315.

## Third Party Assets

- Tile and background sprites from [Bayat's Platform Game Assets](https://bayat.itch.io/platform-game-assets) with no modifications, and licensed under [Creative Commons Attribution v4.0 International](https://creativecommons.org/licenses/by/4.0/legalcode)

- Enemy sprites from [RiLi_XL's Cultist Priest Sprite Pack](https://rili-xl.itch.io/cultist-priest-pack), and licensed as "Free to use in any commercial projects" as of September 26th, 2022

- Player sprites from [RiLi_XL's Otter Sprite Pack](https://rili-xl.itch.io/cultist-priest-pack), and licensed as "Free to use in any commercial projects" as of September 26th, 2022

## Project Report:

### Reflection

This iteration of the second project was pretty interesting. I had fun animating and coding the player's kinematic movement and interactions. Throughout the iteration, I had only a few problems pop up, and one of these was detecting collisions from another KinematicBody2D (the enemy). My solution is shown in the check_slide_collisions() method in Player.gd where I loop through every collision each cycle, and manually check each collision for a KinematicBody2D class type. If the conditional is true, the enemy is damaged by the player and dies. There is most certainly a better way to do this, and it will be re-done in the next iteration. 

### Self-Assessment

- [x] D-1: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-2: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [x] C-1: Your repository is well-formed, in our course organization, with an appropriate <code>.gitignore</code> file, no unnecessary files tracked, and all commit messages following <a href="https://cbea.ms/git-commit/">our commit message style guide</a>.
- [x] C-2: Your release is tagged using <a href="https://semver.org/">semantic versioning</a> where the major version is zero, the minor version is the iteration number, the patch version is incremented as usual for each change made to the minor version, and the release name matches the release tag.
- [x] C-3: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [x] C-4: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game.
- [x] C-5: The game includes a player-controlled character, implemented as a <code>KinematicBody2D</code> and positioned in a conventional, <code>TileMap</code>-based, 2D-platforming world.
- [x] C-6: The player's character can move left and right, with its movement bounded by impassable tiles.
- [x] C-7: The player's character can jump up and onto tiles.
- [x] C-8: The player's character falls down when walking off a ledge.
- [x] B-1: The project report is complete.
- [x] B-2: The source code and project structure comply with <a href="https://www.gdquest.com/docs/guidelines/best-practices/godot-gdscript/">our adopted guidelines</a>.
- [x] B-3: There is a sprite element in the level that the player can interact with, such as a collectible, an enemy, a book, or a switch.
- [x] B-4: The camera follows the character through a world that is larger than one screen.
- [x] A-1: Generate neither warnings nor errors at runtime.
- [x] A-2: Earn one star
- [x] ⭐ Animate the main character using either <code>AnimatedSprite</code> or cutout animation
- [ ] ⭐ Include parallax scrolling in the background.
- [ ] ⭐ Include tiles that can be passed in one direction, such as being able to jump up through a tile and land atop it.

This work merits an A.