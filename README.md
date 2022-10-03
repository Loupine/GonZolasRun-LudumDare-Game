# Project 2, Ludum Dare Entry:

A 2D game created using Godot Engine for the Ludum Dare Compo. Also created for Project 2 in CS315.

## Assets

- Player, enemy, coin, and tile sprites were all made by myself using [Piskel](https://www.piskelapp.com/)

- Music made using a TripleOscillator and a Kicker in [LMMS](https://lmms.io/)

- Chailce Noggin Font by [ripoof](https://www.fontspace.com/chailce-noggin-font-f83197), and licensed as "Public Domain"

## Project Report:

### Reflection

In this iteration, I had some issues with collision detection between nodes. Although we went over collision in class, I was getting a strange issue where my instanced nodes would sometimes return nothing when trying to access them through their collisions. Luckily grouping the nodes and accessing them through that identifier worked like a charm. I initially wanted to finish this in-time for Ludum Dare's Compo, but I missed the deadline and instead submitted to the Jam on Monday. Overall, this was a fun project because I got to make all the art and music myself!

### Self-Assessment

- [x] D-1: The repository contains a <code>README.md</code> file in its top-level directory.
- [x] D-2: The project content is eligible for an <a href="https://www.esrb.org/ratings-guide/">ESRB Rating</a> of M or less.
- [x] C-1: Your repository is well-formed, with an appropriate <code>.gitignore</code> file, no unnecessary files tracked, and all commit messages following <a href="https://cbea.ms/git-commit/">our style guide</a>.
- [x] C-2: You have a clear legal right to use all incorporated assets, the licenses for all third-party assets are tracked in the <code>README.md</code> file, and you have satisfied all license requirements.
- [x] C-3: The <code>README.md</code> contains instructions for how to play the game or such instructions are incorporated into the game.
- [x] B-1: You have a complete gameplay loop: title, gameplay, end.
- [x] B-2: A link to your public Ludum Dare project page is included in your submission.
- [x] A-1: The source code and project structure comply with <a href="https://www.gdquest.com/docs/guidelines/best-practices/godot-gdscript/">our guidelines</a>.
- [x] A-2: Generate neither errors nor warnings at runtime.

This work therefore merits an A.