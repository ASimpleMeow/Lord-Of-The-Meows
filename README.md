# The Lord Of The Meows
---

A Unity 2017 game, set in a fantasy world ruled by cats.

Further reading : 

- [Concept Document](./Concept_Document.pdf)
- [Proposal Document](./Proposal_Document.pdf)

---

## Progress Report  
&nbsp; 
29-09-2017  
- Basic character movement __WASD__: UP, LEFT, DOWN, RIGHT.
- Camera movement.
- Chest Interactable script.
- Sign/Dialog Interactable script.  
  

&nbsp; 
30-09-2017  
- Implemented choice system: 
    - When interacting with a InteractableSign which has one or more Choice types, the player will be given these choices.
    - The playe will use the __UP__ and __DOWN__ arrows to select the choice and press the __E__ key to continue.
- Choices implemented:
    - Dialog choice - displays additional dialog, has three fields :
        - string[] : new messages to display.
        - bool : Override original message of the InteractableSign.
        - bool : Remove this choice once it has been selected.
    - Exit - Ends the interaction.

  
&nbsp;
01-10-2017
- Implemented Inventory system, with seven slots.
    - Player navigates the inventory via __LEFT__ and __RIGHT__ arrow keys.
    - Player uses the selected item via __SPACEBAR__ key.
	
  
&nbsp;
02-10-2017
- Implement choice flags for choice option control.
- Try out using additive scene with main scene.
	
  
&nbsp;
03-10-2017
- Extend InteractableSign into InteractableSignChoice which has choices feature.
- Fix bug of using items, adding items and removing items when character is frozen.
- Fix bug of ItemDatabase returning null.
- Use Persistent scene to hold persistent objects (i.e. Character), achieving persistence.
	
  
&nbsp;
05-10-2017
- Finish implementing the SceneController script for loading, unloading and changing scenes.
- Create the GUI for pause menu.
	
  
&nbsp;
08-10-2017
- Implement Open/Close menu with time scale adjusting accordingly.
	- Implement Resume and Exit buttons
	- Controls with only __E__ key for confirming button and __UP/DOWN__ arrow keys for selection
	
  
&nbsp;
10-10-2017
- Import blender created models and setup the first level - Kings Castle.
	
  
&nbsp;
11-10-2017
- Start building the level, attaching scripts to gameobjects and setting up colliders.
	
  
&nbsp;
12-10-2017
- Implement InteractableExchange script for possible quest/shops.
	
  
&nbsp;
14-10-2017
- Extend the functionality of InteractableChest and InteractableExchange to feature optional InteractableSign's - i.e When chest is open a dialog is displayed to tell you what you got, and when an already chest is interacted with, it tells you that the chest is already empty.
- Fix InteractableSign bug when if the player presses __E__ key to skip dialog, the player becomes unfrozen before the dialog box disappears.
- Create and import a WoodenSign asset and position it in the KingsCastle level.
- Change Kings dialog from InteractableSign to InteractableSignChoice to demo the choice system.
- Minor text changes in InteractableSign's (to added better jokes and puns) and repositioning some GameObjects.
- Create better sprites and added them to the game.
	
  
&nbsp;
17-10-2017
- Fix duplicate KingsCastle scene loading bug
- Create SpawnPoint gameobject and script to specify Character spawn location and camera movement boolean.
	
  
&nbsp;
19-10-2017
- Add Health and Powerup HUD
- Create CharacterHealthModel for adding/damaging health