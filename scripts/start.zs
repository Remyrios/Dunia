import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.tag.MCTag;

//Charred Bark
craftingTable.addShapeless("charred_bark", <item:farmersdelight:tree_bark>, [<item:mysticalworld:charred_log>]);

//Rough Stick
craftingTable.removeRecipe(<item:silentgear:rough_rod>);
craftingTable.addShapeless("rough_stick", <item:silentgear:rough_rod> * 2, [<item:farmersdelight:tree_bark>]);

//Pebble
craftingTable.addShapeless("pebble", <item:botania:pebble> * 2, [<item:minecraft:coarse_dirt>]);

//Reinforced Dirt
craftingTable.addShapeless("reinforced_dirt", <item:contenttweaker:reinforced_dirt>, [<item:botania:pebble>, <item:silentgear:rough_rod>, <item:minecraft:dirt>]);

import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.IIngredient;

//Planks
val wood as IItemStack[IIngredient] = {
    <tag:items:minecraft:oak_logs>.asIIngredient(): <item:minecraft:oak_planks>,
    <tag:items:minecraft:spruce_logs>.asIIngredient(): <item:minecraft:spruce_planks>,
    <tag:items:minecraft:birch_logs>.asIIngredient(): <item:minecraft:birch_planks>,
    <tag:items:minecraft:jungle_logs>.asIIngredient(): <item:minecraft:jungle_planks>,
    <tag:items:minecraft:acacia_logs>.asIIngredient(): <item:minecraft:acacia_planks>,
    <tag:items:minecraft:dark_oak_logs>.asIIngredient(): <item:minecraft:dark_oak_planks>
};

var saw = <item:silentgear:saw>.anyDamage().transformDamage(2);
var count = 0;

for log, plank in wood {
    craftingTable.removeRecipe(plank);
    craftingTable.addShapeless("planks_" + count, plank * 3, [log, saw]);
    count++;
}