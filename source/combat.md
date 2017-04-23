# Combat

Combat is designed to be challenging and deadly. It utilises a damage model based on wounds, rather than hit points.

## Damage System

### Wounds

Each location tracks wounds. Bodily locations include:

- Head
- Right arm
- Left arm
- Torso
- Right leg
- Left leg

Each location may sustain three types of damage.

1. **Flesh-wounds:** a hit that results in no immediate danger. However, they can build up. Three flesh-wounds create an injury.
2. **Injury:** a strike that is damaging. Each injury on a location grants a -5 modifier to utilising that location.
3. **Critical Injury:** an injury that disables the location entirely. If this is to the head or torso, it creates a mortal injury.
	- Upon receiving a critical injury, make a TGN check. On failure, the location is removed. This does not apply to the head or torso.
	- The number of injuries to each location needed to form a Critical Injury on a normal human, or human-like creature:
		+ Arms: 10
		+ Legs: 10
		+ Head: 5
		+ Torso: 20

### Mortal Damage

Once a character receives a mortal injury, they become unable to function. If they are not stabilised within two turns, they must start rolling toughness checks every turn. If at any point they fail this check, they die.

### Weapons

Each weapon possesses a percentile chance of inflicting an injury. This is represented by a weapon's DP, or Damage Percentile. If a roll for damage beats (comes below) this value, an injury is inflicted.

If the roll for damage fails, a flesh-wound is inflicted instead.

If the roll surpasses four degrees of success, it automatically inflicts a critical injury.

### Armour

Armour is available for each location. A piece of armour will possess an armour modifier. The armour modifier is added to the difficulty when rolling to hit.

### Locational Damage

Region            | Dice       |
----------------- | -----------|
Head              | 1-10       |
Right arm         | 11-20      |
Left arm          | 21-30      |
Torso             | 31-70      |
Right leg         | 71-85      |
Left leg          | 86-00      |

## Modifiers

### Status Effects

`Haha actually create this system`

## Combat Flow

### Initiating Combat

When initiating combat, all character should roll initiative equal to xd10, where x is equal to the tenth digit of the SGL score.

If the attack is unexpected by the defenders, each attacker receives (in arbitrary) one extra full turn before initiative is taken into account.

### Turn actions

Turns are comprised of two actions. Unless otherwise specified, a non-movement action immediately ends the turn.

- **Move:**
	+ Move within the movement speed of the character.
- **Sprint:**
	+ Move twice the movement speed of the character. This ends the turn.
- **Defend:**
	+ Defend against the next attack. An attack the following turn has a -10 to hitting the defender.
- **Ranged / Melee Attack:**
	+ Make the appropriate roll (MWS or RWS) to hit the enemy. The attacker may choose to make an aimed shot at a -20 to hit. 
	+ Roll a d100 to determine the location hit. Refer to Locational Damage for chart.
	+ On success, make a roll against the weapon’s DP.
	+ Repeat roll to hit and damage for each attack(s) per action.
- **Magic Attack:**
	+ Make a magic roll based on the type of magic user.
	+ On success, apply spell effects to target. The target may make an agility roll to dodge (MOD -20) if their AGL score is above 30.
- **Other Actions:**
	+ Use any other action that may be used outside of combat.
