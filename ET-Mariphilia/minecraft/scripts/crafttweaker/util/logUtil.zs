#priority 3000

zenClass LogUtil{
    static TYPE_INFO as string = "INFO";
    static TYPE_WARNING as string  = "WARNING";
    static TYPE_ERROR as string = "ERROR";
    val packname as string;
    zenConstructor(name as string){
        packname = name;
    }

    function inBracket(text as string) as string{
        return "["+text+"]";
    }

    function log(type as string, text as string){
        print("[ETF]"+inBracket(packname)+inBracket(type)+": "+text);
    }

    function logInfo(text as string){
        log(TYPE_INFO, text);
    }

    function logWarning(text as string){
        log(TYPE_WARNING, text);
    }

    function logError(text as string){
        log(TYPE_ERROR, text);
    }
}