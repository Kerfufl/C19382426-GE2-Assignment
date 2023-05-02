# C19382426-GE2-Assignment
Repository for Game Engines 2 assignment

Name: **Eoin McMahon**
Student Number: **C19382426**
Class: DT211C / TU857

# Description

**A flock of fairies, managed by a schooling behaviour, is minding its own business when birds of prey using noise-wander behaviours descend upon them. They must use their size and maneuverabiltiy to evade the projectiles fired by these birds.**

A 'nature sim' in the sense that it simulates a school o fboids, which can be dispersed when attacked by a not strange bird of prey launching its own feathers. This stemmed from acombination of different inspirations, all amalgamating into this strange little implementation.

## Video

## Screenshots

![uhoh](./pics/cirno_danger.png)

# Instructions

Load the godot project in version 3.5.1. Open the Forest-Fire Scene and press play.

Standard camera controller from GE2 boids repo, camera following one of the patrolling birds
# How?

# Assets:

| **Asset** | **Source** |
|-----------|-----------|
| CameraController.gd | Godot_Boids |
| FPController.gd | Godot_Boids |
| StateMachine.gd | Modified from Godot_Boids | 
| Wander.gd | Godot_Boids |
| NoiseWander.gd | Godot_Boids |
| Constrain.gd| Godot_Boids |
| Avoidance.gd| Godot_Boids |
| Pursue.gd | Godot_Boids |
| OffsetPursue.gd | Godot_Boids |
| School.gd | Godot_Boids |
| Cohesion.gd | Godot_Boids |
| Separation.gd | Godot_Boids |
| Alignment.gd | Godot_Boids |
| Spawner.gd| Self Written |
| Collision.gd | Self Written |
| HuntState.gd| Self Written / based on state.gd |
| ShootState.gd| Self Written / based on state.gd |

# Sources:
Sources for models and music/sound effects used in this assignment:

## Models
### Bird model:
https://sketchfab.com/3d-models/stylized-falcon-769f1d695bce4e1baed49747665cd995

### Fairy Model:
https://sketchfab.com/3d-models/fumo-cirno-f19d95b8da874d30a1d0425c93e695e0

### Feather Model:
https://sketchfab.com/3d-models/feather-7d93f6d775394cebb8ac81f668234e20

## Music/ Sound Effects:

### Fairy Death sound effect:
https://www.youtube.com/watch?v=4CU74sMGHaE

### Music used for HuntState:
https://youtu.be/IJ4h3WOtDT8

### Music used for ShootState:
https://youtu.be/Xy_-7OXophY

