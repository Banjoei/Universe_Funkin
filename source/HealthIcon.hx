package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-car', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1, 2], 0, false, isPlayer);
		animation.add('bf-pixel', [27, 27], 0, false, isPlayer);
		animation.add('spooky', [3, 4, 5], 0, false, isPlayer);
		animation.add('pico', [6, 7, 8], 0, false, isPlayer);
		animation.add('banjoei', [32, 33, 34], 0, false, isPlayer);
		animation.add('mom', [9, 10], 0, false, isPlayer);
		animation.add('mom-car', [9, 10], 0, false, isPlayer);
		animation.add('tankman', [11, 12], 0, false, isPlayer);
		animation.add('face', [13, 14, 15], 0, false, isPlayer);
		animation.add('dad', [16, 17, 18], 0, false, isPlayer);
		animation.add('senpai', [28, 28], 0, false, isPlayer);
		animation.add('senpai-angry', [28, 28], 0, false, isPlayer);
		animation.add('spirit', [29, 30, 31], 0, false, isPlayer);
		animation.add('bf-old', [19, 20, 21], 0, false, isPlayer);
		animation.add('gf', [22], 0, false, isPlayer);
		animation.add('gf-christmas', [22], 0, false, isPlayer);
		animation.add('gf-pixel', [22], 0, false, isPlayer);
		animation.add('parents-christmas', [23, 24], 0, false, isPlayer);
		animation.add('monster', [25, 26], 0, false, isPlayer);
		animation.add('monster-christmas', [25, 26], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
