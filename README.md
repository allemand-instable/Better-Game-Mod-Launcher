# better_game_mod_launcher
 A Better Script to Start Game_mod for Black Ops

> for genuine version of black ops

## What does it do better ?

- If STEAM isn't launched yet, it launches STEAM, otherwise game_mod won't let you play
- Launches Game_mod and [TIM for Black Ops](https://download.magicbennie.com/BlackOpsZombies/TIM/) so you don't have to get back to your game folder to launch it
  - Steam and TIM path are customizable, you can change them at the beginning of the `.bat`

right here :

```batch
SET Steam_PATH = "E:\Program Files (x86)\Steam\steam.exe"
SET BlackOPSTIM_PATH = "Black Ops TIM.exe"
```




## Installation

Copy `PLAY.bat` to the root directory of Black Ops

copy the location of your steam installation and Black ops TIM installation in these 2 variables:

```batch
SET Steam_PATH = "E:\Program Files (x86)\Steam\steam.exe"
SET BlackOPSTIM_PATH = "Black Ops TIM.exe"
```

adjust the timings for steam launch
```batch
REM Depending on your machine and your connection, you will have to tweak it : must be when the store page loads up
SET Steam_Launch_Time = 26
```

ENJOY
