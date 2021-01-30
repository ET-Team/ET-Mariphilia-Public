#packmode normal
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

global paramTNTAmountFromAsh as int = 4;
global paramStringAmountFromFiber as int = 1;
global paramStringAmountFromAsh as int = 2;

global recipeCompactAsh as IIngredient[][] = [
    [<contenttweaker:solidified_ash>,null,<contenttweaker:solidified_ash>],
    [null,<contenttweaker:solidified_ash>,null],
    [<contenttweaker:solidified_ash>,null,<contenttweaker:solidified_ash>]
];

global recipeBasicNet as IIngredient[][] = [
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
    [<ore:stickWood>,<waterstrainer:net>,<ore:stickWood>],
    [<ore:stickWood>,<ore:stickWood>,<ore:stickWood>],
];

global recipeDawnstoneAnvil as IIngredient[][] = [
    [<ore:plateDawnstone>,<ore:plateDawnstone>,<ore:plateDawnstone>],
    [null,<ore:ingotDawnstone>,null],
    [<embers:block_caminite_brick_slab>,<ore:blockDawnstone>,<embers:block_caminite_brick_slab>]
];

global paramPlankAmountFromLog as int = 5;
global paramFiberAmountFromSeaweedBadSword as int = 2;
global paramFiberAmountFromSeaweedGoodSword as int = 4;
global paramBlendedCaminiteAmountFromIWC as int = 4;
global paramMetalNuggetAmountFromMMMK1 as int = 6;
global paramFishingRod as IItemStack = <minecraft:fishing_rod>.withTag({ench: [{lvl: 3 as short, id: 62 as short}]});
//是否启用木棍烧制灰烬的补救配方
global paramEnableRemedyRecipeForAsh as bool = true;
global paramAlchemyPestalAmount as int = 2;
global paramToolPartAmount as int = 2;
// 超频时间/每次用药
global paramOverclockTime as int = 600;