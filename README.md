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