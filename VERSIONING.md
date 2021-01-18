ETM Versioning Guide

下列是版本更迭时需要修改的变量值：

./ET-Mariphilia/minecraft/config/CustomMainMenu/mainmenu.json : 

```
labels : mojang : text
```

./ET-Mariphilia/minecraft/config/randompatches.cfg : 

```
client : window : title
```

./ET-Mariphilia/manifest.json : 

```
version
```

./pack.sh :

```
    MAJOR_VERSION
    MINOR_VERSION
    ITERATION_VERSION
```

版本号命名规范 https://semver.org/
