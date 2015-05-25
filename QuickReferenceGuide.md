


快速操作手册
打开目录导航栏：
<C-T>n  或者 ：NERDTree

打开WinManager：
:WMToggle

多Tab切换：
gt -> 下一个Tab
gT-> 上一个Tab
NumberedTab-> nnn gt

打开Tagbar:
;tl   或者 :TagbarToggle
打开Tlist:
TlistOpen   TlistToggle

窗口切换：
;nw    ;hw    ;lw      ;jw      ;kw    Ctrl－W   Ctrl-W

代码折叠 ：
za，打开或关闭当前折叠；zM，关闭所有折叠；zR，打开所有折叠

代码收藏：
标注标签：mx ...
标签跳转： ‘x 跳转到x标签

接口实现快速切换：
;ih  : 切换到当前函数对应的实现

代码导航：
g]

Ctags 自动代码跳转：
ctrl-r ： 更新当前目录tags
Ctrl-]    跳转到光标所在符号的定义。
Ctrl-t    回到上次跳转前的位置
;jd : 跳转到定义
;je: 跳转到定义，只能是＃include文件

Cscope 代码阅读：
使用Cscope需要生成cscope数据库文件。进入项目代码根目录运行命令：cscope -Rbq -f path/xxx.out
进入项目代码根目录，在Vim下运行命令：cs add path/xxx.out
Cscope常用快捷键
           Ctrl-\ s 查找所有当前光标所在符号出现过位置。
           Ctrl-\ c 查找所有调用当前光标所在函数的函数


代码注释：
：50，60Commentary

另一种代码注释：
shift+v+方向键选中(默认当前行)
;cc      加上注释
;cu      解开注释
;c<space> 加上/解开注释
;cy      先复制再注解, p可以粘贴未注释前的代码


两行合并：
shift ＋j
J

当前行加环绕字符:   yss + 字符串
原行假设： "Hello world"   -> yss{  -> 变成：{"hello world”}
当前行的环绕字符替换： cst + 新的环绕字符串
<q>Hello world!</q>  -> cst” -> “Hello world!”

删除环绕 ds + 环绕字符串
“Hello world” -> ds” -> Hello World

替换环绕字符： cs原有字符＋新替换字符
. 可以使用重复命令



去掉尾行空格： 尾行空格会自动标红
:FixWhitespace  或者  ;+空格


多行对齐：
用 v选中多行，然后
:EasyAlign :  意思是第一个：对齐
:EasyAlign =   意思是第一个＝对齐
:EasyAlign *=   意思是所有的＝对齐
:EasyAlign 3\    意思是第三个\对齐

:EasyAlign 2  意思是第二个空格对齐


快速跳转：
方式一：  ;;w  -> 然后按位置标注字符跳转
方式二：  ;;f+搜索字符 ->然后按位置字符跳转  比如： ;;fo 会标出所有的位置为o的字符
方式三： ;;k 快速向上移动到某一行
方式四： ;;j 快速向下移动到某一行


多行编辑：
连续用多次Ctrl ＋N 选中多个，再按v进入多行同时编辑，按i进入插入模式


搜索：

1. 文件搜索：

      ctrl+p -> 输入文件名， 然后
                         ctrl + j/k 进行上下移动,
                         ctrl + x/v 分屏打开该文件 [重要**]
                         ctrl + t   在新tab中打开该文件
      ctrl + f - > 打开最近的文件列表
