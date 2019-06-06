# ToyRobot

## Overview

● The application is a simulation of a toy robot moving on a square tabletop, of dimensions 5 units x 5 units.
● There are no other obstructions on the table surface.
● The robot is free to roam around the surface of the table, but must be prevented
from falling to destruction. Any movement that would result in the robot falling from the table must be prevented, however further valid movement commands must still be allowed.

## Setup

In the directory:

1. Run "bundle install"
2. Run “chmod +x exe/toy_robot”

## Running the Application

1. Put the commands in the commands.txt file in the directory.
2. Run "bundle exec exe/toy_robot commands.txt"

## Assumptions

1. Application will ignore invalid commands in the sequence, but it will be reported.


