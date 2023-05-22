# コード表示

## インラインコード

``` md
`int i=0`
```

`int i=0`

## アウトラインコード

```` md
``` C
#include <stdio.h>

/* Comment */
for(int i=0; i<10; i++){
    printf("Hello World! \n");
}
```
````

``` C
#include <stdio.h>

/* Comment */
for(int i=0; i<10; i++){
    printf("Hello World! \n");
}
```


```` md
``` Ini
[section1]
name1=1234
name2=hoge

[section2]
name3=5678
name4="fuga"
```
````

``` Ini
[section1]
name1=1234
name2=hoge

[section2]
name3=5678
name4="fuga"
```

## ASCIIアート

```` md
``` aa
root                         ┌───────────────────────┐             ┌──────────────┐
 ├─branch-1                  |        Vehicle        ├── has-a ───→|    Engine    |
 │  ├─sub-branch-1           └───────────────────────┘             └──────────────┘
 │  └─sub-branch-2                 ↑              ↑                      ↑   ↑                 ------\\
 ├─branch-2                        |              |                      |   |                 ┤ ^_^ |
(以下略)
````

日本語を使わなければ、大体位置が合う。

``` aa
root                         ┌───────────────────────┐             ┌──────────────┐
 ├─branch-1                  |        Vehicle        ├── has-a ───→|    Engine    |
 │  ├─sub-branch-1           └───────────────────────┘             └──────────────┘
 │  └─sub-branch-2                 ↑              ↑                      ↑   ↑                 ------\\
 ├─branch-2                        |              |                      |   |                 ┤ ^_^ |
 │  └─sub-branch-3                 |            is-a                     |   |                 └──-──┘  
 │     ├─a                         |              |                      |   |       
 │     └─b                         |         ┌────┴─────────┐            |   |
 ├─branch-3                       is-a       |    Toyota    ├── has-a ───┘   |                 ------\\
 │  └─sub-branch-4                 |         └──────────────┘                |                 ┤ @_@ |
 └─branch-4                        |                                       is-a                └──-──┘
    ├─sub-branch-5                 |                                         |       
    ├─sub-branch-6           ┌─────┴──────────┐                     ┌────────┴────┐
    │  └─c                   │   Lamborghini  ├───────has-a ───────→│  V12 Engine │
    └─sub-branch-7           └────────────────┘                     └─────────────┘
```
