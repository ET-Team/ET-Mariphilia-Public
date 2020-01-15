#priority 3000
import crafttweaker.item.IItemStack;

zenClass OreDictUtil{
    zenConstructor(){}
    function getNuggetFromOre(ore as string, number as int) as IItemStack{
        var oreDictEntry = oreDict.get("nugget"+ore);
        return oreDictEntry.firstItem.withAmount(number);
    }
}