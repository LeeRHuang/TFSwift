//
//  ViewController.swift
//  TFSwift1
//
//  Created by lirihuang on 14-12-4.
//  Copyright (c) 2014年 TF. All rights reserved.
//

/*
Tips:
1、变量和运算符号不要紧靠在一块，要么都有一个空格间距要么都没有间距，要一致，例如：a<5 true a <5 false a < 5 turn
2、swift通过类型推断常量或者变量类型，如果赋了初始值，会自动推断类型
3、可以使用任何字符命名，甚至是没有编码的字符
4、常量与变量名不能包含数学符号,箭头,保留的(或者非法的)Unicode 码位,连线与制
表符。也不能以数字开头,但是可以在常量与变量名的其他地方包含数字。
5、常量和变量在同一个作用域只能被声明一次，并且常量和变量不能互转
6、println 是一个用来输出的全局函数,输出的内容会在最后换行，print输出内容最后不会换行,但是可以输出更详细的内容
7、使用反斜杠和一对括号作为转义输出，需要输出的值放在括号里面
8、swift没有强制在语句后面添加分号，添加分号也不会报错，但是如果是多条语句，必须添加分号
9、尽量不要使用UInt类型，统一使用 Int 可以提高代码的可复用性,避免不同类型数字之间的转换,并且匹配数字的类型推测
10、Swift提供了一个特殊的整数类型 Int,长度与
当前平台的原生字长相同在 32 位平台上,Int 和 Int32 长度相同。在 64 位平台上,Int 和 Int64 长度相同。,Double 精确度很高,至少有 15 位数字,而 Float 最少只有 6 位数字
11、Swift 是类型安全的,所以它会在编译你的代码时进行类型检查(type checks),并把 不匹配的类型标记为错误。如果显式指定类型,Swift 会使用类型推测(type inference)来选择合适的类型，只要坚持赋值就可以
12、当推测浮点数的类型时,Swift 总是会选择 Double 而不是 Float。
13、不同数据类型不能够进行运算，不如UInt8和UInt16，只要转换成同一个类型才能进行运算
14、整数和浮点数的转换必须显式指定类型
15、bool类型分为true和false，适用于类型推断，在需要使用bool类型地方没有使用，编译器会报错
16、元组是多个值得复合而成的值，元组内的值可以使任意类型，不要求是相同类型,一般用于临时组织的数据结构
17、问号暗示包含的值是可选,也就是说可能包含值也可能不包含值
18、使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前,一 定要确定可选包含一个非 nil 的值
19、可选绑定(optional banding)用来判断可选是否包含值，如果包含就赋给一个临时变量
20、可以给一个可选变量赋值nil表示没有值，nil不能用于非可选的常量和变量;如果你的代码中有常量或者变量需要处理值缺失 的情况,请把它们声明成对应的可选类型,会默认置为nil;如果你声明一个可选常量或者变量但是没有赋值,它们会自动被设置为 nil
21、Swift的nil和Objective-C 中的nil并不一样。在Objective-C中,nil是一个指向不存在对象的指针。在Swift中,nil不是指针——它是一个确定的值,用来表示值缺失。
任何类型的可选都可以被设置为 nil,不只是对象类型。
22、￼注意:如果一个变量之后可能变成 nil 的话请不要使用隐式解析可选。如果你需要在变量的 生命周期中判断是nil的话,请使用普通可选类型。
23、断言是判断一个条件是否为真，可以结束代码运行，如果条件判断为true那么继续执行，否则代码停止运行，应用被终止
24、Swift 支持大部分标准 C 语言的运算符,在 Swift 中你可以对浮点数进行取余运算( % ),还提供了C语言没有的表达两数之间的值的区间运算符, ( a..b 和 a...b ), 这方便我们表达一个区间内的数值
25、与 C 语言和 Objective-C 不同, Swift 的赋值操作并不返回任何值
26、闭区间a...b定义了一个区间(包含a和b及之间所有值)有三个小数点
27、如果您创建了一个新的字符串值,那么当其进行常量、变量 赋值操作或在函数/方法中传递时,会进行值拷贝。
28、通过标明一个 Character 类型注解并通过字符字面量进行赋值,可以建立一个独立
的字符常量或变量
29、不能将一个字符串或者字符添加到一个已经存在的字符变量上,因为字符变量只能包含一个字符
30、Swift中的数组是类型安全的,并且它们中包含的类型必须明确
31、同时需要每个数据项的值和索引值，可以使用全局 enumerate 函数来进行数组遍历
32、Array 类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法
33、updateValue(forKey:)函数会返回包含一个字典值类型的可选值，如果这个只存在则返回原先值，否则更新这个key对应的值到字典中但是返回原先的值
34、可以使用下标语法来通过给某个键的对应值赋值为 nil 来从字典里移除一个键值对
35、Swift 的字典类型是无序集合类型。其中字典键,值,键值对在遍历的时候会重新排列,而且其中顺序是不固定的
36、所有的Swift基本类型(例如 String,Int, Double 和 Bool)都是默认可哈希的,并且所有这些类型都可以在字典中当做键使用。未关联值的枚举成员(参见枚举)也是默认可哈希的
37、switch语句当匹配的case块中的代码执行完毕后,程序会终止switch语句,而不会继续执行下一个case块；每一个case块都必须包含至少一条语句；可以使用多个模式，用逗号分开
38、元组可以包含值，也可以包含范围，还可以使用下划线(_)代替可能出现的所有值
39、case模块可以将匹配的值绑定到一个临时变量或者常量，可以在case块语句中使用。如果出现了可以匹配所有元素的元组，那么默认的default语句可以省略
40、case语句可以使用where关键字进行额外判断,并且需要在where所在语句为真时候才执行
41、switch语句当匹配的case块中的代码执行完毕后,程序会终止switch语句,而不会继续执行下一个case块,每一个case块都必须包含至少一条语句，不需要大括号
42、contiune只用于for循环，跳出此次循环，break用于for或者switch语句终止整个循环，在循环体使用break会终止整个循环，调到{}后的第一句代码去执行
43、swift中的switch一旦匹配了case执行完,整个语句就结束了,不需要显示的在case语句中插入break来中断整个语句；而c语言的switch语句需要在匹配的case快中插入break来中断整个语句，否则会跳入到下一个case块中一次执行。要达到C语言这种模式，可以使用关键字fallthrough，加fallthrough关键字会跳转到下一个case块中，继续执行。
44、标签一个循环体或者loop循环，当使用continue或者break带上这个标签，可以控制该标签代表对象的终端或者执行
45、无形参函数，即时没有参数，在函数被调用时候还是需要带一对空括号
46、本地形参名称和外部形参名称,本地形参名称只能在函数内部使用，外部形参写在本地形参之前，用一个空格分开，如果本地形参和外部形参名称一样，那么可以使用#(hash符合)代替外部形参
47、默认形参值，可以为任何形参定义默认值，作为函数的一部分，如果参数有默认值，调用时候可以不传值，使用默认值空字符串""
48、可变形参,可以接受0个或者 多个指定值得参数，在形参类型后面加三个点...来编写可变形参,但是函数最多只有一个可变形参，如果函数已经有一个或者多个带有默认值的形参，并且还有可变形参，那么可变形参放在所有形参之后
49、In-Out形参 变量形参只能在函数本身内改变。如果你想让函数改变形参值,并想要在函数调用结束后保持形参值的改变,那你可以把形参定义为in-out形参。
50、闭包 闭包是功能性自包含代码块，可以在代码中传递和使用。闭包可以捕获和存储所在上下文中的任意变量和常量的引用。
51、字典后面跟一个感叹号可以保证所查找的key不存在也可以不会查找失败。
52、函数和闭包都是引用类型，无论您将函数/闭包赋值给一个常量还是变量,您实际上都是将常量/变量的值设置为对应函
数/闭包的引用。
53、枚举 枚举是定义了一个通用类型的一组相关的值,原始值可以是字符串,字符,或者任何整型值或浮点型值,当整型值被用于原始值,如果其他枚举成员没有值时,它们会自动递增。原始值,定义枚举时候预先填充的值，必须是同一种类型,长度类型必须一致
54、枚举获取指定原始值枚举成员使用rawValue代替fromRaw，使用rawValue代替toRaw获取枚举成员原始值
55、值类型被赋予给一个变量,常数或者本身被传递给一个函数的时候,实际上操作的是其的拷贝
56、在 Swift 中,所有的基本类型:整数(Integer)、浮点数(floating-point)、布尔值(Booleans)、字符串(string)、数组(array)和字典(dictionaries),都是值类型,并且都是以结构体的形式在后台所实现。
57、枚举和结构体都是值类型，被赋值给一个变量实际操作是其的拷贝
58、//类是引用类型,和枚举、结构体是值类型不同，类被赋值给一个变量、常量或者当做一个函数参数传递时候不是传递它的拷贝，而是类的实例本身。
59、集合类的赋值和拷贝 数组和字典都是以结构体形式实现的，是值类型，所以赋值或者传递给函数都会是传递他的一份拷贝。
60、对数组来说,拷贝行为仅仅当操作有可能修改数组长度时才会发生。
61、属性将值和类、结构体、枚举关联起来。分为存储属性和计算属性。存储属性只能够用于类和结构体，而计算属性可以用于类、结构体、枚举。属性也可以用于类型本身，称为类型属性。还可以定义属性监视器来监控属性值的变化,以此来触发一个自定义的操作。属性监 视器可以添加到自己写的存储属性上,也可以添加到从父类继承的属性上。
62、由于结构体是值类型，当值类型的实例被声明为常量则所有属性都为常量，不能被修改，如果被声明为变量那么所有属性都为变量
63、由于类是引用类型，当把引用类型实例赋值给一个常量时候，还是可以修改实例变量的属性。
64、只读属性，只读属性指只能访问不能够修改值，会返回有个值。可以省略括号和get关键字
65、属性监视器，属性监视器监控和响应属性值的变化,每次属性被设置值的时候都会调用属性监视器，willSet 在设置新的值之前调用，didSet 在新的值被设置之后立即调用，可以为除了延迟存储属性之外的其他存储属性添加属性监视器
66、全局的常量或变量都是延迟计算的,跟延迟存储属性相似,不同的地方在于,全局的常量或变量不需要标记@lazy 特性;局部范围的常量或变量不会延迟计算
67、1、实例的属性属于一个特定类型实例,每次类型实例化后都拥有自己的一套属性值,实例之间 的属性相互独立 2、也可以为类型本身定义属性,不管类型有多少个实例,这些属性都只有唯一一份。这种属性 就是类型属性。3、对于值类型(指结构体和枚举)可以定义存储型和计算型类型属性,对于类(class)则只能 定义计算型类型属性。
68、值类型是什么类型，那么它的属性也就变成什么类型，引用性类的实例赋给一个常量，还是可以修改实例的变量属性。
69、计算属性不直接存储值,而是提供一个 getter 来获取值,一个可选的 setter 来间接设置其他属性或变量的值
70、必须使用 var 关键字定义计算属性,包括只读计算属性,因为他们的值不是固定的。let 关键字只用来声明常量属性,表示初始化后再也无法修改的值。
71、只读计算属性的声明可以去掉get关键字和花括号
72、结构体和枚举能够定义方法是 Swift 与 C/Objective-C 的主要区别之一。在 Objective-C 中,类是唯一能定义方法的类型。但在 Swift 中,你不仅能选择是否要定义一个类/结构体/枚举,还能灵活的在你创建的类型(类/结构体/枚举)上定义方法
73、实例方法要写在它所属的类型的前后大括号之间。实例方法能够隐式访问它所属类型的所有的其他实例方法和属性。实例方法只能被它所属的类的提供个特定实例调用。实例方法不能脱离于现存的实例而被调用。
74、因为方法就是函数,只是这个函数与这个类型相关联了
75、类型的每一个实例都有一个隐含属性叫做 self,self 完全等同于该实例本身,实例方法的某个参数名称与实例的某个属性名称相同的时候，这个时候需要通过self属性区分参数名称和属性名称
76、类型的每一个实例都有一个隐含属性叫做 self,self完全等同于该实例本身,实例方法的某个参数名称与实例的某个属性名称相同的时候,参数名称享有优先权,这个时候需要通过self属性区分参数名称和属性名称
77、枚举的变异方法可以把 self 设置为相同的枚举类型中不同的成员
78、声明类的类型方法,在方法的func关键字之前加上关键字 class;声明结构 体和枚举的类型方法,在方法的 func 关键字之前加上关键字static
79、可以定义在类(Class)、结构体(structure)和枚举(enumeration)这些目标中,可以认为是访问对象、集合或序列的快捷方式,不需要再调用实例的特定的赋值和访问方法。
80、一个类可以继承另一个类的方法，属性，和其他特性，类可以调用和访问超类的方法，属性，附属脚本，并且可以重写这些方法，还可以为继承来的属性添加属性观察器。
81、初始化器默认是不继承的，一个类的实例方法会被这个类的所有子类继承
82、override 关键字会提醒Swift编译器去检查该类的超类(或其中一个父类)是否有匹配重写版本的声明。这个检查可以确保你的重写定义是正确的。
83、重写属性，可以复写setter和getter方法，但是不能只复写setter方法而不复写getter方法，也不能将一个属性复写只读属性
84、复写属性观察器,可以为继承来的属性添加一个观察器，当继承来的属性值发生改变时候，会被自动通知，但是不饿能够为常量属性和只读属性添加属性观察器，因为它们不能够被改变。不能够同时复写属性观察器和属性的setter、getter方法。
85、可以添加@final关键字，防止被重写，在clas前面添加final关键字标记整个类都不能被重写
86、只要构造器定义了某个外部参数名,你就必须使用它,忽略它将导致编译错误
87、可选属性类型,可选类型的属性将自动初始化为空 nil,表示这个属性是故意在初始化时 设置为空的
88、对某个类实例来说,它的常量属性只能在定义它的类的构造过程中修改，不能在子类中修改
89、值类型构造代理，￼构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理,它能减少多个构造器间的代码重复，值类型没有继承。
90、类里面的所有存储型属性--包括所有继承自父类的属性--都必须在构造过程中设置初始值。
91、跟Objective-C 中的子类不同,Swift 中的子类不会默认继承父类的构造器。Swift的这种机制可以防止一个父类的简单构造器被一个更专业的子类继承,并被错误的用来创建子类的实例
92、如果某个存储型属性的默认值需要特别的定制或准备,你就可以使用闭包或全局函数来为其属性某供定制的默认值。每当某个属性所属的新类型实例创建时,对应的闭包或函数会被调用,而它们的返回值会当做默认值赋值给这个属性。
93、闭包后面跟一对大括号，表示立刻执行该闭包，如果忽略这对大括号，那么就是将闭包本身赋值给属性，而不是将返回值付给属性
94、引用计数只应用在类的实例。结构体(Structure)和枚举类型是值类型,并非引用类型,不是以引用的方式来存储和传递的
95、swfit提供两种方式避免循环引用，弱引用和无主引用
//对于生命周期中引用会变为 nil 的实例,使用弱引用;对于初始化时赋值之后引用再也不会赋值为 nil 的实例,使用无主引用。
//弱引用只能声明为变量类型,因为运行时它的值可能改变。弱引用绝对不能声明为常量。
//无主引用，无主引用只能是非可选类型，始终有默认值，在变量前面可以添加unowned表示。
96、两个属性都必须有值,且初始化完成后不能为 nil。这种场景下,则 要一个类用无主引用属性,另一个类用隐式展开的可选属性。
97、只要在闭包内使用 self 的成员,就要用 self.someProperty 或者self.someMethod(而非只是 someProperty 或 someMethod)。这可以提醒你可能会不小心 就占有了 self。
98、占位列表，占有列表定义了闭包内占有一个或者多个引用类型的规则。和解决两个类实例间的强引 用环一样,声明每个占有的引用为弱引用或无主引用,而不是强引用。根据代码关系来决定使用弱引用还是无主引用,占有列表中的每个元素都是由 weak 或者 unowned 关键字和实例的引用,每一对都在花括号中,通过逗号分开。例如[unowned self]
99、如果自判断的目标有值,那么调用 就会成功;相反,如果选择的目标为空(nil),则这种调用将返回空(nil)
100、类型转换，使用is和as操作符，这两个操作符提供了一种简单达意的方式去 检查值的类型或者转换它的类型
101、AnyObject可以表示任何Class类型的实例；Any类型,使用Any类型可以添加各种不同类型混合在一起
102、扩展就是向一个已有的类、结构体或枚举类型添加新功能(functionality)
103、￼注意:扩展可以添加新的计算属性,但是不可以添加存储属性,也不可以向已有属性添加属性观测器(property observers)
104、Protocol(协议)用于统一方法和属性的名称,而不实现任何功能。协议能够被类,枚举,结 构体实现,满足协议要求的类,枚举,结构体被称为协议的遵循者
105、用 class 实现协议中的 mutating 方法时,不用写 mutating 关键字;用结构体,枚举实现协议中的 mutating 方法时,必须写mutating关键字
106、协议能够继承一到多个其他协议。语法与类的继承相似,多个协议间用逗号,分隔
107、一个协议可由多个协议采用 protocol<SomeProtocol, AnotherProtocol>这样的格式进行组
合,称为协议合成(protocol composition)
108、可选协议含有可选成员,其遵循者可以选择是否实现这些成员。在协议中使用@optional关键字作为前缀来定义可选成员。可选协议只能在含有@objc 前缀的协议中生效。且@objc 的协议只能被类遵循
109、泛型代码可以让你写出根据自我需求定义、适用于任何类型的，灵活且可重用的函数和类型。它的可以让你避免重复的代码，用一种清晰和抽象的方式来表达代码的意图
*/
import UIKit

extension Double {
    var km: Double {return self * 1_000.0}
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

struct Point {
    var x = 0,y = 0
}

struct Size {
    var width = 0,height = 0
}

struct Rect {
    var point = Point()
    var size = Size()
}

extension Rect{
    
    init(center: Point,size :Size){//提供新的构造器
        let originX = center.x-(size.width/2)
        let originY = center.y-(size.height/2)
        self.init(point: Point(x: originX, y: originY), size: size)
    }
    
    func instanceFunc(){//添加方法
        println("instanceFunc extension!")
    }
    
    //静态方法
    static func test(){
        println("test extension!")
    }
}

extension Int{
    //实例方法
    func reptitions(task :()->()){//()->()表明是单参数，没有参数也没用返回值
        for i in 0...self{
            task()
        }
    }
    
    //修改实例方法
    mutating func square()->Int{
        return self*self
    }
    
    //脚本下标
    subscript(digitIndex: Int) -> Int {
         var decimalBase = 1
         for _ in 1...digitIndex {
        decimalBase *= 10
        }
        return (self / decimalBase) % 10
      }
}

extension Character{
        
        enum Kind{
        case Vowel,Consonant,Other
        }
        
        //计算性属性
        var kind: Kind {
        switch String(self).lowercaseString{
        case "a", "e", "i", "o", "u": return .Vowel
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        return .Consonant default:
            return .Other
          }
        }
}


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var testInstance =  TestClass()
        /*基本语法学习*/
        learnBaseSyntax()
        learnCapterOne()
        learnCapterTwo()
        learnCapterThree()
        learnFunctionChapter()
        learnClosurcesChapter()
        learnEunmerChapter()
        learnClassAndStructChapter()
        learnPropertyChapter()
        learnMethodChapter()
        learnSubScript()
        learnInheritChapter()
        learnDeinitChapter()
        learnARCChapter()
        learnTypeCast()
        learnNestTypeCharpter()
        learnExtensionChapter()
        learnProtoclChapter()
        learnGenericesCharpter()
        /*********************************类**********************************/
//        learnClassSyntax()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func learnBaseSyntax()->Void{
        //varible describle the value that can be changed in the future,the name that be modified by key word let only be assiged once
        /*******************************1、常量和变量********************************/
        var a = 1   //声明变量
        a = 3       //修改变量值
        let b = 2   //常量赋值,不能再修改值
        var doubleValue:Double = 10  //在变量后面添加类型说明
        let floatValue:Float = 10  //在常量后面添加说明类型
        
        /********************************2、拼接字符串*******************************/
        let label = "The width is"
        let width = 94
        let widthLabel = label + String(width)
        println("widthLabel = \(widthLabel)")
        print("widthLabel = \(widthLabel)")
        
        /*******************************3、 \()拼接字符串*******************************/
        let apple = 3
        let orange = 4
        let amount = "i have total \(apple) apples"
        NSLog("amount == %@\n", amount)
        print("amount === %@",amount)
        println("amount === %@",amount)
        
        /*******************************4、创建数组和字典 []*******************************/
        //创建数组
        var countries = ["USA","China","England","Germany","France"]
        let usa = countries[0]
        var china = countries[1]
        china = "中华人民共和国"
        print(usa)
        print(china)
        
        //创建字典
        var agesDictionary = ["Jeery":25,
            "Tom":26,
            "Luces":24]
        print(agesDictionary)
        //赋值
        agesDictionary["Jeery"] = 26
        print(agesDictionary)
        //初始化空数组和字典
        let shopList = []
        var member = Dictionary<String,Float>()
        member = ["Lily":10,"Luce":14]
        print(member)
        //按照类型推断初始化数组和字典
        var teamArrays = []
        var teamDic = [:]
        teamArrays = ["10","20"];
        teamDic = ["key":"vaule"]
        var value: AnyObject? = teamDic["key"]
        
        /*******************************5、控制流*******************************/
        //使用if、switch来进行条件判断，for、for-in、while、do-while进行循环操作，条件和循环中的变量小括号不需要可以省略，但是主题语句的大括号必须
        let allScore = [78,61,80,80,90]  //类似oc中的不可变数组
        var teamScore:Int = 0
        for score in allScore{
            if score > 70{               //if条件语句中必须是布尔表达式
            teamScore += 3
        }else{
            teamScore += 1
            }
        }
        print(teamScore)
        
        //可选变量值缺失，可变变量的值可以是一个具体值也可以是nil，表示缺失，表示方式是在变量后添加"?"
        var optionalString:String? = "Hello"
        optionalString = nil
        var greeting = "Hello"
        if let name = optionalString{  //optionalString置为nil，name为常量并不等于nil，执行else语句
            greeting = "Hello \(name)"
        }else{
            greeting = "Hello World"
        }
        
        //switch支持任何类型数据和各种比较操作,不同于c语言，switch不需要在每个语句后面添加break
        let colorName = "red"
        var flag = ""
        switch colorName{  //case语句后必须要有执行语句，default语句不可少
        case "yellow":
            flag = "yellow"
        case "green":
            flag = "green"
        case "red":
            flag = "red"
        default:
            flag = "Not found"
        }
        
        //使用for-in遍历字典，需要添加两个变量分别表示
        let interestingNumbers = [
            "Prime":[1,3,5,7,9],
            "Fibonacci":[1, 1, 2, 3, 5, 8],
            "Square":[1, 4, 9, 16, 25],
        ]
        var largest = 0
        //遍历选出其中最大值
        for (key,numbers) in interestingNumbers{
            for value in numbers{
            if value > largest{
            largest = value
            print(largest)
            }
            }
        }
        
        //while循环
        var n = 2
        while (n < 100){
            n *= 2
            println(n)
        }
        
        var m = 2;
        do{
            m *= 2;
            println(m)
        }while(m < 100)
        
        //使用省略号....表示范围，不包含上界
        for a in 0...10{//快速遍历
            println(a%5)
        }
        for var test = 0;test < 10;++test{
                println(test)
        }
        
        
        /*******************************6、函数和闭包*******************************/
        //使用func声明函数，使用名称和参数调用函数，使用->表示返回类型
        func caculateAllStudents()->Void{  //不带参数无返回值，->Void也可以省略
            
        }
        
        func checkOutIsRight(a:Int)->Int{ //带参数并且有返回值
            return a;
        }
        
        func greet(name:String,age:Int)->String{//带多个参数有返回值
            return "name is \(name) age is \(age)";
        }
        //调用函数
        var name = greet("Jone", 18)
        
        //使用元组接受多个返回值
        func getGPSPrices()->(Float,Double,Double){
            return(116.23,112.49,133.89)
        }
        var gps = getGPSPrices()
        
        //函数参数可以有多个参数,使用元组表示
        func sumOf(numbers:Int...){
            //声明一个变量
            var temp = 0;
            for number in numbers{
                while(temp < 20){
                temp += number
                NSLog("temp = %d",temp)
                }
            }
        }
        //调用
        sumOf(2,1,21)
        
        //计算参数平均值
        func caculateAverageVaule(parameter:Int...)->Int{
            var temp = 0
            for p in parameter{
            temp += p;
            }
            let average = temp/parameter.count
            return average
        }
        let average = caculateAverageVaule(1,4,15,7,8,10)
        println(average)
        
        //函数嵌套
        //声明一个函数
        func addPuls()->Int{
            var y = 5
            //嵌套声明一个add函数
            func add(){
                y+=5 //变量+5
            }
            add() //调用add函数
            return y //取得返回值
        }
        //调用addPuls函数
        var add = addPuls()
        println("add = \(add)")
        
        //函数嵌套作为返回值
        func makeIncrementer()-> (Int -> Int) {
            func addOne(number: Int) -> Int {
            return 1 + number
            }
            return addOne
        }
        var increment = makeIncrementer()
        increment(7)
        
        //函数当做参数传递给另一个函数
        func hasAnyMatches(list: [Int], condition: Int -> Bool) -> Bool {
            for item in list {
            if condition(item) {
            return true
            }
            }
            return false
        }
        
        //声明一个函数，参数类型是Int，返回值是Bool型
        func lessThanTen(number: Int) -> Bool {
            return number < 10
        }
        var numbers = [20, 19, 7, 12] //数组
        //lessThanTen函数作为参数传递给hasAnyMatches
        hasAnyMatches(numbers, lessThanTen)
        
        func matchFunction(listArg: [Int],condtion:Int->Bool)->Bool{
            //遍历数组
            for item in listArg{
            //根据传入条件判断
            if condtion(item){
                return true
            }
            }
            return false
        }
        
        //声明形参函数对应的函数
        func match(a:Int)->Bool{
            return a < 5
        }
        //需要传入的数组参数
        var array = [19,32,6,21,7]
        //调用matchFunction函数
        matchFunction(array, match)
        
        //函数实际上是一个闭包，使用{}创建匿名闭包，in分割参数
        
        numbers.map({
            (number: Int) -> Int in
            let result = 3 * number
            return result
            })
        
        //对所有奇数返回0
        numbers.map { (number:Int) -> Int in
            return number/2 == 0 ? 0 : 1
        }
        
        //你可以通过参数位置而不是参数名字来引用参数——这个方法在非常短的闭包中非常有用。 当一个闭包作为最后一个参数传给一个函数的时候,它可以直接跟在括号后面。
        //        sort([1,5,3,12,2]){$0>$1}
    }
    
    func learnCapterOne()->Void{
        /**************************************整形类型*************************************/
        let maxInt8Value = Int8.max //127
        let minInt8Vaule = Int8.min //-128
        let maxUInt8Vaule = UInt8.max //255
        let minUInt8Vaule = UInt8.min //0
        let maxInt16Value = Int16.max //32767
        let minInt16Value = Int16.min //0
        let maxUInt16Value = UInt16.max //65535
        let minUInt16Value = UInt16.min //0
        
        let maxInt32Value = Int32.max //2147483647
        let minInt32Vaule = Int32.min //-2147483647
        let maxUInt32Vaule = UInt32.max //4294967295
        let minUInt32Vaule = UInt32.min //0
        let maxInt64Value = Int64.max //9223372036854775807
        let minInt64Value = Int64.min //-9223372036854775807
        let maxUInt64Value = UInt64.max //18446744073709551615
        let minUInt64Value = UInt64.min //0
        
        //在 32 位平台上,Int 和 Int32 长度相同。在 64 位平台上,Int 和 Int64 长度相同。
        
        /**************************************浮点类型*************************************/
        //Double 精确度很高,至少有 15 位数字,而 Float 最少只有 6 位数字
        
        /***************************************类型安全和推断*******************************************/
        //Swift 是类型安全的,所以它会在编译你的代码时进行类型检查(type checks),并把 不匹配的类型标记为错误。如果显式指定类型,Swift 会使用类型推测(type inference)来选择合适的类型，只要坚持赋值就可以。
    let line = 10 //类型推断为整形
    let  money = 2398.098 //推断为双精度型而不是浮点型
        
        /****************************************数值类型转换*****************************/
//        let cannotBeNegative: UInt8 = -1  //报错0-255
//        let tooBig: Int8 = Int8.max + 1 //超过存储最大数值区域报错
        let twoThousand:UInt16 = 1000
        let one:UInt8 = 2
        let addTogther = twoThousand+UInt16(one)//UInt16类型转换
        //不同数据类型不能够进行运算，不如UInt8和UInt16，只要转换成同一个类型才能进行运算
        
        //整形转浮点型运算
        let three = 3
        let pointOneFourOneFiveNine = 0.14159 //double类型
        let pi = Double(three) + pointOneFourOneFiveNine // pi 等于 3.14159,所以被推测为 Double 类型
        
        //浮点转整形
        let p = Int(pi)
        
        /****************************************类型别名*****************************/
        //类型别名就是一个类型的另一个名字，可以使用关键字typealias定义
        typealias AudioSample = Int
        //使用
        let maxAudioSound = AudioSample.max
        
        /****************************************Bool类型*****************************/
        //bool类型分为true和false，适用于类型推断，在需要使用bool类型地方没有使用，编译器会报错
        
        /****************************************元组*****************************/
        //元组是多个值得复合而成的值，元组内的值可以使任意类型，不要求是相同类型,一般用于临时组织的数据结构
        let statusCode = (404,"NOT Found")  //类型是 (Int, String),值是 (404, "Not Found")
        //分解元组，获取其中元素
        let (errorCode,statuesMessage) = statusCode
        println("errorCode = \(errorCode)")
        println("message = \(statuesMessage)")
        
        //只需要某一部分内容
        let (justStatueCode,_) = statusCode
        println("justStatueCode = \(justStatueCode)")
        
        //通过下标访问
        println("firstOne = \(statusCode.0),secondOne = \(statusCode.1)")
        
        //给元素命名
        let http200Error = (statusCode:200,description:"ok")
        println("http200Error = \(http200Error.statusCode,http200Error.description)")
        
        /****************************************可选*****************************/
        let possiableNumber = "123"
        //convert to int,必须是数字，如果是其他字符串,一个
        //可选的 Int 被写作 Int?而不是 Int。问号暗示包含的值是可选,也就是说可能包含 Int 值也可能不包含值
        let stringToInt = possiableNumber.toInt()
        
        /****************************************if强制解析值*****************************/
    //当确定可选值有值之后，可以在名字后面添加一个！号表示这个可选有值，称为可选值的强制解析(forced unwrapping)
    //使用!来获取一个不存在的可选值会导致运行时错误。使用!来强制解析值之前,一定要确定可选包含一个非 nil 的值
        if stringToInt == 123{
            println("stringToInt = \(stringToInt!)")
            //肯定值stringToInt = 123
        }else{
            println("stringToInt = \(stringToInt)")
            //输出stringToInt = Optional(123)
        }
        //可选绑定(optional banding)用来判断可选是否包含值，如果包含就赋给一个临时变量
        if var actualNumber = possiableNumber.toInt(){
            println("actualNumber = \(actualNumber)")  //此处不需要使用actualNumber!来获取值，因为已经初始化转换成功
        }else{
           println("\(possiableNumber) could not be converted to an integer")//
        }
        
        //可以给一个可选变量赋值nil表示没有值
        var sevredErrorCode:Int? = 404
        sevredErrorCode = nil
        
    //nil 不能用于非可选的常量和变量。如果你的代码中有常量或者变量需要处理值缺失 的情况,请把它们声明成对应的可选类型
//        var error = 209
//        error = nil  //报错
        
        //如果你声明一个可选常量或者变量但是没有赋值,它们会自动被设置为 nil:
        var error1:String?
        println("error1 = \(error1)") //error1 = nil
        
        /****************************************隐式解析可选*****************************/
        //concept:当可选被第一次赋值之后就可以确定之后一直有值的时候，把想要用作可选类型的后面的问号(?)改成感叹号(!)来声明隐式解析
        var name:String? = "Lee"
        println("name = \(name!)")
        var age:Int! = 25
        println("age = \(age)")
        
       //在可选绑定中使用隐式解析
        if let myAge = age {
            println("myAge = \(myAge)")
        }
        
        //使用感叹号获取值
        let possibleString: String? = "hello World"
        println(possibleString!)
        
        //直接声明为隐式解析类型
        let possibelStr: String! = "Yes I do"
        println(possibelStr)
        
        /****************************************断言(assertion)*****************************/
        //concept:断言是判断一个条件是否为真，可以结束代码运行，如果条件判断为true那么继续执行，否则代码停止运行，应用被终止
        
        let leeAge = 12
        assert(leeAge > 10, "error happen") //条件为false，停止运行
        
       
    }

    func learnCapterTwo()->Void{
        /****************************************基本运算符*****************************/
       //赋值运算
       let a = 3
       var b  = 4
       b = a
       
       let (x,y) = (2,3)
       println("x,y= \(x,y)")
            
       //赋值运算不返回值
       //+可以连接字符串
       let dog = "dog"
       let cat = "cat"
       let animal = dog+cat
            
       //浮点型求余
       let oilNumber = 20.8
       let oilPrice = oilNumber%8
       
       var addPluse = 0
       let plusePrefix = ++addPluse
       let sufixPluse = addPluse++
            
        //区间运算符
       //闭区间a...b定义了一个区间(包含a和b及之间所有值)有三个小数点；半闭包区间包含左边不包含右边，有两个小数点；
        for index in 1...5{
        println("index = \(index)")
        }
        
            
        let names = ["Anna", "Alex", "Brian", "Jack"]
        let count = names.count-1
        for i in 0...count {
        println("第 \(i + 1) 个人叫 \(names[i])")
        }
            
        let allowEntry = true
        if allowEntry{
        println("allowEntry")
        }
            
        let enteredDoorCode = false
        let passedRetainCode = true
        if !enteredDoorCode && passedRetainCode{
          println("coming!")
        }else{
          println("forbiden")
        }
        
        /****************************************初始化字符串*****************************/
        
        var emptyString = ""
        var anotherTempString = emptyString
        if anotherTempString.isEmpty{
            println("anotherTempString = \(anotherTempString)")
        }
        //常量字符串和变量字符串
        var  country = ""
        country += "American "
        let city = "NewYork"
        country += city
//        city = "London" 不可变
        
        //遍历所有字符
        for character in "mynameisleerihuang"{
            println("\(character)")
        }
        //通过标明一个 Character 类型注解并通过字符字面量进行赋值,可以建立一个独立的字符常量或变量
        let yenSign: Character = "¥"
        
        //调用countElements函数计算字符个数
        let unusualMenagerie = "my name is lee rihuang"
//        println("characterCountIs = \(count(unusualMenagerie))")
        
        //不能将一个字符串或者字符添加到一个已经存在的字符变量上,因为字符变 量只能包含一个字符
        var string2 = "!"
        var instruction = "look over"
        instruction += string2
        
        //字符串插值  以反斜杠\()包裹常量、变量、表达式、字面量，构建一种全新字符串
        let multiplier = 4
        println("\(multiplier) time 2.5 \(Double(multiplier))*2.5")
        
        //字符串比较、完全相等、前缀相等、后缀相等
        let firstStr = "my name is LeeRiHuang"
        let secondStr = "my name is LeeRiHuang"
        if firstStr == secondStr{
            println("firstStr is equal to secondStr")
        }
        
        //hasPrefix、hasSuffix判断前缀和后缀
        let romeoAndJuliet = ["Act 1 Scene 1: Verona, A public place",
         "Act 2 Scene 2: Capulet's mansion",
        "Act 1 Scene 3: A room in Capulet's mansion"]
        var sceneCount = 0
        var cellCount = 0
        for scene in romeoAndJuliet{
            if scene.hasPrefix("Act 1"){
             println("sceneCount = \(++sceneCount)")
             }
        }
        
        //字符串大小写
        let lowerString = "abcdefg"
        let upperString = "ABCDEFG"
        println("lowerStringToUpperString == \(lowerString.uppercaseString)")
        println("upperStringTolowerString == \(upperString.lowercaseString)")
        
        //遍历字符串访问字符编码
        let myDog = "dog🐶"
        for codeUTF_8 in myDog.utf8{
            print("codeUTF_8 = \(codeUTF_8)")
            //codeUTF_8 = 100codeUTF_8 = 111codeUTF_8 = 103codeUTF_8 = 240codeUTF_8 = 159codeUTF_8 = 144codeUTF_8 = 182
        }
        
        //任意的 21 位的 Unicode 代码点
        for codeUTF_16 in myDog.unicodeScalars{
            print("codeUTF_16 = \(codeUTF_16.value)")
        }
   }
    
    func learnCapterThree()->Void{
       //集合分为数组和字典
       let array = [1,3,5]
       var dictionary = ["name":"Lee","age":25]
        for items in array{
            println("items = \(items)")
        }
    
        let firstValue = array.first
        var startIndex = array.startIndex
        var endIndex = array.endIndex
    
    
        for keys in dictionary.keys{
           println("key = \(keys)")
        }
    
        for vaule in dictionary.values{
            println("vaule = \(vaule)")
        }
    
        //Swift 中的数组是类型安全的,并且它们中包含的类型必 须明确
        var shopList = ["eggs","milks"]
        if !shopList.isEmpty{
            println("shopList = \(shopList.count)")
        }else{
            println("shopList is empty")
        }
        //使用append添加元素
        shopList.append("bread")
        println("now shopListCount is = \(shopList.count)")
    
        shopList += ["rice","water"]
    
        var firstIndex = shopList.first
        shopList[1...3] = ["Banana","Orange"]  //按索引替换值
        println("shopList = \(shopList)")
    
        //在指定索引前面插入值
        shopList.insert("Apple", atIndex: 0)
    
       //删除指定索引值
        shopList.removeAtIndex(0)
    
       //移除最后一项
       shopList.removeLast()
    
        for (index,item) in enumerate(shopList){
           println("index = \(index)  item = \(item)")
        }
    
       //构建数组
      var someInts = []
      println("someInts = \(someInts.count)")
    
    // Array 类型还提供一个可以创建特定大小并且所有数据都被默认的构造方法
      var fourDouble = Array(count: 2, repeatedValue: 0.0)
      var anotherThreeDoubles = Array(count: 3, repeatedValue: 2.5)
      var sixDoubles = fourDouble + anotherThreeDoubles
    
    //字典
    var airportDic:Dictionary<String,String> = ["BJ":"BeiJing","DUB":"DBL"]
    var school = ["CS":"雅礼中学","BJ":"北京四中","WH":"武汉一中"]
    println("schoolCount = \(school.count)")
    //指定key分配新值
    school["NJ"] = "南京七中"
    school["CS"] = "长郡中学"
        
    //updateValue(forKey:)函数会返回包含一个字典值类型的可选值，如果这个只存在则返回原先值，否则更新这个key对应的值到字典中但是返回原先的值
        if let oldVaule = school.updateValue("师大附中", forKey: "CS"){
            println("oldVaule == \(oldVaule)")
        }
        
    //通过下标检索指定key的值
        if let schoolName = school["KH"]{
            println("schoolName is == \(schoolName)")
        }else{
            println("there is not exist schoolName")
        }
    //可以使用下标语法来通过给某个键的对应值赋值为 nil 来从字典里移除一个键值对
        school["WH"] = nil
        
    //removeValueForKey可以按照指定的key移除键值对，这个方法在键值对存在情况下会移除键值对并且会返回被移除键值对的值或者在没有值情况下返回nil
        if var removeCSName = school.removeValueForKey("CS"){
            println("CS is been removed === \(removeCSName)")
        }else{
            println("the school dictionary does not contain the vaule")
        }
        
        //清空所有值
//        school.removeAll(keepCapacity: true)
        println("school == \(school)")
        
        //遍历字典
        for (shortName,schoolName) in school{
            println("shortName is== \(shortName) schoolName is === \(schoolName)")
        }
        
        //遍历所有key
        let keys = school.keys
        for key in keys{
            println("key is == \(key)")
        }
        //遍历所有vaules
        let vaules = school.values
        for value in vaules{
            println("value is ==\(value)")
        }
        
        //直接使用字典的键或者值作为构造数组
        var schoolNameArray = Array(school.keys)
        var schollVauleArray = Array(school.values)
        let guanzhouSchoolName = "GZ"
        schoolNameArray.append("GZ")
        schollVauleArray.append("广州一中")
        
        //初始化一个空字典
        var carBrand = Dictionary<Int, String>()
        carBrand[0] = "丰田"
        carBrand[1] = "现代"
        carBrand[2] = "本田"
        
        for (brandIndex,brandVaule) in carBrand{
            println("brandIndex ==\(brandIndex),brandVaule == \(brandVaule)")
        }
        carBrand[5] = "大众"
        //置空字典
        carBrand = [:]
        
        //集合的可变性，声明变量和常量表面数组和字典是可变的还是不可变的，如果字典声明是可变的，可以对其进行相关增删改操作，相反不能改变对应key和vaule的值；如果声明的数组是可变的，也可以对其操作增删改，如果声明的是不可变的，那么我们不能修改数组的内容，但是可以修改索引的顺序，使得数组大小被固定下依然灵活。
        
        //控制流
        //for循环 i在循环中被赋值，类型可以自动推断出来
        for i in 2...10{
            println("i ====\(i)")
        }
        //如果不需要变量的值还可以使用_来代替忽略对值得访问
        var goal = 10
        var index = 0
        for _ in 1...10{
            ++index
            goal *= index
            println("goal === \(goal)")
        }
        
        //遍历数组所有元素
        let names = ["Jack","Lily","Lucy","Jone"]
        for name in names{
            println("name == \(name)")
        }
        
        //遍历字典
        let numbersOfStudent = ["zhangsan":1,"chengxiang":3,"duyue":20,"wangyi":12]
        for (name,number) in numbersOfStudent{
            println("name == \(name),number == \(number)")
        }
        
        //for递增
        for var i = 0; i <= names.count; ++i {
         println("index == \(i)")
        }
        
        var j = 0
        while j <= names.count{
            println("j ===\(j)")
            j++
        }
        var a = 0
        do{
         a++
        println("a === \(a)")
        }while(a < 10)
        
        let finalSquare = 25
        var board = Array(count: finalSquare + 1, repeatedValue: 0)
        board[03] = +08
        board[06] = +11
        board[09] = +09
        board[10] = +02
        board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08
        var square1 = 0
        var diceRoll = 0
        while square1 < finalSquare {
        if ++diceRoll == 7 { diceRoll = 1 }
        // move by the rolled amount
        square1 += diceRoll
        if square1 < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square1 += board[square1]
          println("square1 === \(square1)")
        }
           }
        println("Game over!")
        
       
        
        //if语句
        var tempA = 10
        if tempA < 12{
            println("tempA === \(tempA)")
        }
        
        //switch语句当匹配的case块中的代码执行完毕后,程序会终止switch语句,而不会继续执行下一个case块,每一个case块都必须包含至少一条语句，不需要大括号
        
        let character:Character = "a"
        switch character{
            case "a", "e", "i", "o", "u":
                println("\(character) is a vowel")
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
            println("\(character) is a constant")
        default:
            println("character is not a vowel or constant ")
        }
        
        let capital = "BeiJing"
        switch capital{
            case "BeiJing","New York","Paris":  //可以使用多个模式，用逗号分开
            println("capital is \(capital)")
            //不再执行后面的分支
            case "A" :
            println("capital first UpperCaseString is \(capital)")
        default:
            println("End!")
        }
        
        //case语句也可以包含一个值得范围
        let numbers = 1000
        switch numbers{
        case 0...100:
            println("numbers in 100 bounds")
        case 100...1000:
                println("numbers in 100--1000 bounds")
        case 1000...100000:
                println("numbers in 1000--100000 bounds")
        default:
                println("numbers in other bounds")//必须包含一个执行语句
        }
        
        //case包含元组，元组中元素可以是值，也可以是范围，可以使用_匹配所有可能的值
        let somePoint = (2,4)
        switch somePoint{
        case (1,1):
            println("some point1 is \(somePoint)")
        case (2,_):  //_下划线匹配所有可能的值
            println("some point2 is \(somePoint)")
        case (2,4):
            println("some point3 is\(somePoint)")
        default:
        println("somePont is NULL")
        }
        
        //值绑定 case模块可以将匹配的值绑定到一个临时变量或者常量，可以在case块语句中使用
        let startPoint = (10,4)
        switch startPoint{
        case (2,_):
            println("just it")
        case (var m,4)://临时变量，匹配m = 10
            m = 11//修改变量的值
            println("m === \(m)")
        case (let x,let y)://临时常量x,y包含了所有可能的值，如果之前的case语句没有执行，会执行该语句，所以default语句可以不需要了
            println("x == \(x)","y == \(y)")
        }
        
        //case语句可以使用where关键字进行额外判断,并且需要在where所在语句为真时候才执行
        let anotherPoint = (1,-1)
        switch anotherPoint{
        case let(x, y) where x == -y:
            println("x === \(x)","-y ==== \(-y)")
        case let(x, y) where x == y:
            println("-x === \(-x)","-y ==== \(-y)")
        default:
            println("there is no match!")
        }
        
        //contiune只用于for循环，跳出此次循环，break用于for或者switch语句终止整个循环，在循环体使用break会终止整个循环，调到{}后的第一句代码去执行
      
        let location = (116,120)
        switch location{
        case let(x ,120):
            break;
        default:
            println("it is okay!")
        }
        
        let country = "Chian"
        for character in country{
            switch character{
              case "C":
                break;
              case "h":
                continue
            default:
               println("hhh")
            }
            if character == "a"{
                break;
            }
        }
        
        let numberOfSymbol:Character = "三"
        var possibleIntegerValue = 0
        switch numberOfSymbol{
            case "1","一","?":
                possibleIntegerValue = 1
          case "2","二","?":
                possibleIntegerValue = 2
          case "3","三","?":
            possibleIntegerValue = 3
              default:
            println("no match!")
        }
        if possibleIntegerValue == 3{
          println("numberOfSymbol == \(numberOfSymbol)")
        }else {
          println("numberOfSymbol is no match")
        }
        
        //swift中的switch一旦匹配了case执行完,整个语句就结束了,不需要显示的在case语句中插入break来中断整个语句；而c语言的switch语句需要在匹配的case块中插入break来中断整个语句，否则会跳入到下一个case块中一次执行。早swift中要达到c语言的这种形式，可以使用fallthrough关键字
      let studentName = "Lee"
        switch studentName{
            case "Deng":
            println("name is Deng")
            case "Zhu":
            println("name is Zhu")
            case "Lee":
            println("name is Lee")
            fallthrough //加fallthrough关键字会跳转到下一个case块中，继续执行，否则中断switch语句
            case "Zhang":
            println("name is Zhang")
            default:
            println("na match name!")
        }
        
        //label 标签一个循环体或者loop循环，当使用continue或者break带上这个标签，可以控制该标签代表对象的中断或者执行
        let students = ["刘谦","邓斌","王三","李红"]
        studentLoop: while students.count == 4{  //添加studentLoop标签，表示while循环
            for name in students{
                switch name{
                  case "刘倩":
                  println("刘倩")
                  break studentLoop  //在break后面调用，终端while循环
                case "邓斌":
                    println("name === \(name)")
                  break studentLoop
                 default:
                 println("noting!")
                }
            }
        }
    }
    
    /****************************************函数*****************************/
    func learnFunctionChapter(){
        //函数是一个执行特定任务的代码块，通过给定一个函数名称标示它，在需要时候使用该名称来调用函数执行任务
        //swfit的函数都有一个类型，返回类型和参数类型，可以作为参数传递，也可以作为函数的返回值返回
        
        func sayHelloToOther(greeter:String)->String{
            let greetString = "\(greeter) " + "say hello"
            return greetString;
        }
        //调用
       var greetString = sayHelloToOther("Wang")
       println("====\(greetString)")
        
       //可以包含多个参数，以逗号(,)隔开
        func caculateZoneLength(start:Int,end:Int)->Int{
            return end - start
        }
        println("length === \(caculateZoneLength(10, 2))")
        
        //无形参函数，即时没有参数，在函数被调用时候还是需要带一对空括号
        func whoIsTheBestOne()->String{
            return "Best One"
        }
        whoIsTheBestOne()
        
        //无返回值函数，严格来说还是返回了一个空的元组()
        func waveSayHello(){
            println("hello everybody")
        }
        waveSayHello()
        
        func printStringElements(name:String)->Int{
            println("name is \(name)")
            return count(name)
        }
        printStringElements("李德华")
        
        //多返回值函数
        func compareWhoIsOldestPerson(age:Int,name:String)->(older:Bool,age:Int){
            let vaule = (true,1)
            if age >= 89 ? true : false{
                return (true,age)
            }
            return (false,age)
        }
        compareWhoIsOldestPerson(90,"Lee")
        
        //本地形参名称和外部形参名称,本地形参名称只能在函数内部使用，外部形参写在本地形参之前，用一个空格分开，如果本地形参和外部形参名称一样，那么可以使用#(hash符合)代替外部形参
        func registerInfomation(age localAge : String,name localName : String,condition localCondition : String)->String{
            return localName + localAge + localCondition
        }
        let infomation = registerInfomation(age: "20", name: "Liu", condition: "Partier")
        println("infomation === \(infomation)")
        
        //使用#代替外部形参
        func login(# mobile:String,#password:String)->Bool{
            if count(mobile) > 0 && count(password) > 0{
                return true
            }
            return false
        }
        let success = login(mobile: "18910001111", password: "123456")
        if success{
            println("login success!")
        }
        
        func containCharacter(#string : String,#characterToEnd : Character)->Bool{
            for character in string{
                if character == characterToEnd{
                    return true
                }
            }
            return false
        }
        
        let isContain = containCharacter(string: "有钱就是人性", characterToEnd: "任")
        if isContain{
            println("contained")
        }else{
            println("there no exist matched character")
        }
        
        //默认形参值，可以为任何形参定义默认值，作为函数的一部分
        func join(string s1:String,toString s2:String,withJoiner s3:String = "-")->String{
            return s1 + s2 + s3
        }
        
        let joinCombineString = join(string: "my ", toString: "name ", withJoiner:"Lee")
        println("joinCombineString == \(joinCombineString)")
        //如果参数有默认值，调用时候可以没传值，使用默认值""
        let noDefaultStr = join(string: "you", toString:"Name")
        println("noDefaultStr == \(noDefaultStr)")
        
        //可变形参,可以接受0个或者 多个指定值得参数，在形参类型后面加三个点...来编写可变形参
        func caculateAverageVaule(score:Double...)->Double{
            var temp:Double = 0
            for number in score{
                temp += number
            }
            return temp / Double(score.count)
        }
       var average = caculateAverageVaule(1,4,6,9)
       println("average === \(average)")
       var average2 = caculateAverageVaule(1,4,7)
       println("average2 === \(average2)")
        
        //但是函数最多只有一个可变形参，如果函数已经有一个或者多个带有默认值的形参，并且还有可变形参，那么可变形参放在所有形参之后
        func orderByHegiht(name:String = "",height:Double = 1.60,clasees:Double...)->Bool{
            if height >= 1.70{
                return true
            }
            return false
        }
        let order = orderByHegiht(name: "Lee", height: 1.70, 349,352)
        println("order === \(order)")
        
        //常量形参、变量形参
        //函数默认的参数是常量形参,我们不能够修改形参的值，否则不能编译
        func changeArgment(str:String,orderDate:String,price:Double){
//            str = "hhh"  //修改形参的值，报编译错误
        }
        
        //变量形参可以有多个，也可以作为函数的修改的副本
        func changeState(errorCode : Double,var errorMessage:String)->Bool{
            if errorCode == 404{
            }
            switch errorCode{
            case 404:
                errorMessage = "NetWorking Error"
                return false;
            case 200:
                errorMessage = "NetWorking Okay"
                return true;
            default:
                errorMessage = "check other"
                return false;
            }
        }
        
        func alignRight(var str:String,count:Int,pad:Character)->String{
            let amountToPad = str.lengthOfBytesUsingEncoding(NSUTF8StringEncoding)
            for _ in 1...amountToPad{ //不需要遍历其中的值
                str += "-"
            }
            return str
        }
       let rightStr = alignRight("LeeRHuang", 11, "1")
        
        //In-Out形参
        func swapTwoInts(inout a: Int,inout b: Int){
            let tempArrayA = a
            a = b
            b = tempArrayA
        }
        
        var someInt = 2
        var anotherInt = 3
        swap(&someInt, &anotherInt)
        println("someInt now is \(someInt)","another now is \(anotherInt)")
        
        //函数类型,都是同一种参数和返回值类型(int,int)->int,可以当做一种类型是看待
        func addTwoInts(a: Int,b: Int)->Int{
            return a+b
        }
        
        func mutplierTwoInts(a :Int,b:Int)->Int{
            return a*b
        }
        
        //声明一个函数类型变量
        var mathFunc: (Int,Int)->Int = addTwoInts
        println("mathFunc is \(mathFunc(2,3))")
        
        mathFunc = mutplierTwoInts
        println("mathFunc now is \(mathFunc(2,3))")
        
        //推断类型
        let anotherMathFunc = addTwoInts
        println("anotherMathFunc is \(anotherMathFunc(8,8))")
        
        //作为形参类型的函数类型
        func printMathResult(mathFunc: (Int,Int)->Int,a: Int,b :Int){
            println("printMathResult is \(mathFunc(a,b))")
        }
        printMathResult(mathFunc, 5, 6)
        
        //作为返回类型函数类型
        func setpForWard(input: Int)->Int{
            return input+1
        }
        func setpBackWard(input: Int)->Int{
            return input-1
        }
        
        func chooseStepFunction(backwards: Bool) -> (Int) -> Int {
             return backwards ? setpBackWard : setpForWard
        }
        var currentVaule = 3
        let tempFunc = chooseStepFunction(currentVaule > 0)
        println("tempFunc is \(tempFunc)")
        while currentVaule != 0{
            println("\(currentVaule)")
            currentVaule = tempFunc(currentVaule)
        }
        println("now is zero!")
        
        //嵌套函数
        func chooseWhicOneToExece(flag: Bool) -> (Int) -> (Int){
            func setpForWard(input: Int)->Int{
                return input+1
            }
            func setpBackWard(input: Int)->Int{
                return input-1
            }
            return flag ? setpBackWard : setpForWard
        }
        var value = 10
        let moveToZero = chooseWhicOneToExece(value>9)
        while value != 0{
            println("vaule is \(value)")
            value = moveToZero(value)
        }
        println("now is zero!")
        
        
    }
    /****************************************闭包*****************************/
    //闭包是功能性自包含代码块，可以在代码中传递和使用。闭包可以捕获和存储所在上下文中的任意变量和常量的引用。
    func learnClosurcesChapter(){
        //闭包表达式{(表达式)->返回类型 in 执行语句}
        
        func compare(string1: String,string2: String)->Bool{
            return string2 > string2
        }
        let array = ["Alex","Tom","Jerry","Lucy","Cabye"]
//        var reversed = sort(array,compare)
//        println("reversed is \(reversed)")
        
//       var reversed = sort(array, {(s1: String, s2: String) -> Bool in return s1
//            > s2 })
        
        let digitNames = [
            0: "Zero", 1: "One", 2: "Two", 3: "Three", 4: "Four",
            5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
           ]
        let numbers = [16, 58, 510]
        let strings = numbers.map {
            (var number) ->String in
            var outPut = ""
            while number > 0{
            outPut = digitNames[number % 10]! + outPut
            number /= 10
            }
            return outPut
        }
        
        //捕获,捕获可以在其定义的上下文中捕获常量或者变量
        func incrementor(forceIncrement amount: Int)->() ->Int{
                var runningTotal = 0
                func increment()->Int{
                runningTotal += amount
                return runningTotal
                }
               return increment
        }
        let increment = incrementor(forceIncrement: 10)
        println("increment1 is \(increment())")//再次调用
        println("increment2 is \(increment())")//再次调用
        println("increment3 is \(increment())")//再次调用
        let incrementNine = incrementor(forceIncrement: 9)
        println("increment4 is \(incrementNine())")//再次调用
        
        //闭包引用 函数和闭包都是引用类型

    }

    /****************************************枚举*****************************/
    //枚举成员不会被隐式的定义一个整数值；多个成员在同一行可以使用逗号分隔；case关键字表面新的一行成员将要被定义；原始值是在定义枚举时候被预先填充的值，关联值是当基于枚举成员的新常量或者变量才会被设置，他们每次的
    func learnEunmerChapter(){
        enum Direction{
            case East
            case West
            case south
            case North
        }
        //declartion a variable to accept Direction's member
        var direction = Direction.East
        //assign vaule,when the variable's type is sure, ignor the Direction type
        direction = .East
        //match the right case
        switch direction{
        case .West:
            println("West")
        case .East:
            println("East")
        case .south:
            println("South")
        case .North:
            println("North")
        }
        //in control strem statement,if match enum case,wo can't ignor anyone,otherwise,complie will error.
        //if wo don't want to match each case,wo can use default statement to reprsent others cases.
        enum Planet{
            case Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, Nepturn
        }
        
        let somePlant = Planet.Mars
        switch somePlant{
        case .Mars:
            println("it is Mars")
        default :
            println("others planets")
        }
        
        //Associate values
        enum BarCode{
            case UPCA(Int,Int,Int)
            case QRCode(String)
        }
        //assgin vaule to a variable
        var productCode = BarCode.UPCA(2000, 200, 300)
        var codeString = BarCode.QRCode("Right")
        productCode = .UPCA(555,777,88)
        codeString = .QRCode("ABCDEFJ")
        
        //use switch statement，可以使用var或者let在关联值前面声明
        switch codeString{
        case .UPCA(let a, let b, let c):
            println("a,b,c is \(a),\(b),\(c)")
        case .QRCode(var codeString):
            println("codeSting is \(codeString)")
        }
        
        //如果关联值都是变量或者常量，可以提取放在case语句前面
        switch productCode{
        case let .UPCA(code1,code2,code3):
            println("code 1 is \(code1),code2 is \(code2),code3 is \(code3)")
        case var .QRCode(string):
            println("codeString is \(string)")
        }
        
        //原始值,定义枚举时候预先填充的值，必须是同一种类型
        enum NameList:Character{
            case chineseName = "李"
            case engilshNmae = "L"
        }
        
        enum CarBrand:Int{
            case Benz = 3,BMW,Toyota,Honda,Citroen
        }
        //使用rawVaule代替toRaw获取原始值
        let carBrand = CarBrand.Benz.rawValue
        //use rawValue to find excepted value
        let thirdValue = CarBrand(rawValue: 1)
        
        //使用可选绑定检测没有匹配的
        let possiableCar = 6
        if let someCar = CarBrand(rawValue: possiableCar){
            switch someCar{
            case .Benz:
                println("it's \(CarBrand.Benz)")
            default:
                println("other car brand")
            }
        }else{
            println("there is not exist such car brand")
        }
    }
    
    /****************************************类和结构体*****************************/
    //共同点
    //定义属性用于提供储存值
    //定义方法用于提供功能
    //定义下标用于通过下标语法访问值
    //定义初始化器用于生成初始化值
    //通过扩展以增加默认实现的功能
    //符合协议以对类提供标准功能
    
    //类其他的特点
    //继承允许一个类继承另一个类的特征
    //类型转换允许在运行时检查和解释一个类实例的类型
    //取消初始化器允许一个类实例释放任何其所被分配的资源
    //引用计数允许对一个类的多次引用
    func learnClassAndStructChapter(){
        //使用Class和Struct分别定义类和结构体
        struct Car{
          var price = 10
          var oilCost = 30
        }
        
        struct Food{
          var fruit = true
          var meet = "meet"
        }
        
        class Animation{
          var food = Food()
          var head = true
        }
        //初始化类的实例和结构体实例，在相应的类和结构体后面跟一对括号
        let car = Car()
        let food = Food()
        let animation = Animation()
        //使用点语法访问变量
        println("car price is \(car.price)")
        println("animation food is \(animation.food.fruit)")
        println("animation head is \(animation.head))")
        
        //￼值类型被赋予给一个变量,常数或者本身被传递给一个函数的时候,实际上操作的是其的拷贝
        //结构体类型成员逐一初始化
        struct resolution{
            var width = 0
            var heigt = 0
        }
        
        let vga = resolution(width:800, heigt: 1024)
        var hd = vga
        hd.width = 1024
        hd.heigt = 2048
        println("hdWidth is \(hd.width) hdHeight is \(hd.heigt)")
        println("vgaWidth is \(vga.width) vgaHeight is \(vga.heigt)")
        //由此可见结构体实例是值类型，hd是vga的一份拷贝
        
        enum compassPoint{
            case East,West,South,North
        }
        //使用一个变量接受枚举成员
        var directionInstance = compassPoint.West
        let tempDircetion = directionInstance
        directionInstance = .East
        if tempDircetion == .West{
            println("tempDirection is \(tempDircetion),directionInstance is \(directionInstance)")
        }
        
        //类是引用类型,和枚举、结构体是值类型不同，类被赋值给一个变量、常量或者当做一个函数参数传递时候不是传递它的拷贝，而是类的实例本身。
        class Human{
            var averageHight:Float = 0
            var isWisdom:Bool = true
            var amount:Double = 0
            var lifeTime:Double = 0
        }
        let human = Human()
        human.averageHight = 1.7
        human.isWisdom = true
        human.amount = 600000000000000
        human.lifeTime = 68.5
        
        var tempHuman = human
        tempHuman.averageHight = 1.8
        //改变的是实例的参数值，实例并没有改变
        println("\(human.averageHight)===\(tempHuman.averageHight)")
        
        //等价于(===),表示两个类型的常量或者变量引用同一个类实例
        //等于(==)表示两个实例的值相等或者相同
        if human === tempHuman{
            println("it is reference the same class!")
        }
        
        //集合类的赋值和拷贝 数组和字典都是以结构体形式实现的，是值类型，所以赋值或者传递给函数都会是传递他的一份拷贝。
        var ages = ["Lee":25,"Zhang":20,"wang":30]
        var tempAge = ages
        ages["Lee"] = 30
        tempAge["Lee"] = 26
        println("ages is \(ages)___tempAge is \(tempAge)")
        
        var randomArrays = [1,5,7,8,21]
        var a = randomArrays
        var b = randomArrays
        println("\(randomArrays[4])")
        println("\(a[4])")
        println("\(b[4])")
        
        randomArrays[4] = 10
        println("\(randomArrays[4])")
        println("\(a[4])")
        println("\(b[4])")
        
        randomArrays.append(10)
        println("\(randomArrays)")
        println("\(a[4])")
        println("\(b[4])")
        
        //数组的唯一性,通过在数组变量调用unshare方法确定数组的唯一性
        //使用等于判断数组是否共用相同元素
        if a == b{
            println("b and c still share the same array elements.")
        }else{
            println("b and c now refer to two independent sets of array elements")
        }
        
        if a[0...2] == b[0...2]{
            println("These two subarrays share the same elements.")
        }else{
            println("These two subarrays do not share the same elements.")
        }
        
        //调用copy显示的复制数组，是浅复制

    }
    
    /****************************************属性*****************************/
    //属性将值和类、结构体、枚举关联起来。分为存储属性和计算属性。存储属性只能够用于类和结构体，而计算属性可以用于类、结构体、枚举。属性也可以用于类型本身，称为类型属性。还可以定义属性监视器来监控属性值的变化,以此来触发一个自定义的操作。属性监 视器可以添加到自己写的存储属性上,也可以添加到从父类继承的属性上。
    func learnPropertyChapter(){
        //存储属性
        struct TextRange{
            var firstValue: Int
            let height: Int
        }
        var rang1 = TextRange(firstValue: 10, height: 20)
        //    rang1.firstValue = 2
        //    textRang.width = 20
        let rang2 = TextRange(firstValue: 10, height: 20)
        
        //由于结构体是值类型，当值类型的实例被声明为常量则所有属性都为常量，不能被修改，如果被声明为变量那么所有属性都为变量
        //由于类是引用类型，当把引用类型实例赋值给一个常量时候，还是可以修改实例变量的属性。
        
        //延迟存储属性
        //延迟存储属性是指只有第一次被访问时候才会创建的属性，在属性声明前使用@lazy表示，只能是变量类型，因为属性的值在实例生成之前可能无法获取到，而常量在构造完成之前必须要有初始值，无法声明为延迟属性。作用是可以减少一些没有必要的初始化。
        class DataImport {
            var fileName = "data.text"
        }
        
        class DataManager {
            lazy var imPorter = DataImport()
            var data = [String]()
        }
        let ​manager​ = DataManager()
        //计算属性，计算属性不存储值，而是提供一个getter方法获取值，一个可选的setter方法来间接设置其他值或者变量
             /*struct Point {
                 var x = 0.0, y = 0.0
                 }
             struct Size {
                 var width = 0.0,height = 0.0
                 }
        
             struct Rect {
                 var origin = Point()
                 var size = Size()
                 var center: Point {
                get{
                let centerX = origin.x + (size.width / 2)
                let centerY = origin.y + (size.height / 2)
                    }
                 set(newCenter) {
                 origin.x = newCenter.x - (size.width / 2)
                 origin.y = newCenter.y - (size.height / 2)
                 }
                }
            }
            var point = Point(x: 10, y: 10)
            var size = Size(width: 20, height: 20)
            var rect = Rect(origin: Point(), size: Size())
        
            let  square = Rect(origin: Point(x: 0.0, y: 0.0), size: Size(width: 10.0, height: 10.0))
            let initialSquareCenter = square.center
            square.center.x = 15.0
            println("square.origin is now at \(square.origin.x), \(square.origin.y)")
        // 输出 "square.origin is now at (10.0, 10.0)”
        
            struct AlertNativeRect {
             var point = Point()
             var size = Size()
                var center :Point{
                    get{
                    let centerX = point.x+size.width/2
                    let centerY = point.y+size.height/2
                    return Point(x: centerX, y: centerY)
                    }
                    set{
                      point.x = newValue.x-size.width/2
                      point.y = newValue.y-size.height/2
                    }
                }
            }*/
        //只读属性，只读属性指只能访问不能够修改值，会返回有个值。可以省略括号和get关键字
        struct Icloud{
            var width = 0.0,height = 0.0,depth = 0.0
            var volume:Double{
                return width*height*depth
            }
        }
        
        let icloud = Icloud(width: 10, height: 20, depth: 30)
        println("icloud is \(icloud.width)")
        
        //属性监视器，属性监视器监控和响应属性值的变化,每次属性被设置值的时候都会调用属性监视器
        //willSet 在设置新的值之前调用
        //didSet 在新的值被设置之后立即调用
        
        class StepCounter{
            var totalSteps :Int = 0 {
                willSet(newTotalSteps){
                    println("newSteps to \(newTotalSteps)")
                }
                
                didSet{
                    if totalSteps > oldValue{
                        println("added \(totalSteps - oldValue) steps");
                    }
                }
            }
        }
        
        let stepCounter = StepCounter()
        stepCounter.totalSteps = 100
        stepCounter.totalSteps = 200
        stepCounter.totalSteps = 300
        
        //全局的常量或变量都是延迟计算的,跟延迟存储属性相似,不同的地方在于,全局的常量或变量不需要标记@lazy 特性;局部范围的常量或变量不会延迟计算
        //1、实例的属性属于一个特定类型实例,每次类型实例化后都拥有自己的一套属性值,实例之间 的属性相互独立 2、也可以为类型本身定义属性,不管类型有多少个实例,这些属性都只有唯一一份。这种属性 就是类型属性。3、对于值类型(指结构体和枚举)可以定义存储型和计算型类型属性,对于类(class)则只能 定义计算型类型属性。
        
        //使用关键字 static 来定义值类型的类型属性,关键字 class 来为类(class)定义类型属性
        
        //跟实例的属性一样,类型属性的访问也是通过点运算符来进行,但是,类型属性是通过类型本身来获取和设置,而不是通过实例

        struct someStruct{
            static var storedTypeProperty = "Some value"
            static var computedTypeProperty: Int{
                return 10
            }
        }
        
        enum someEnum{
            static var storeTypeProperty = "some enum"
            static var computedTypeProperty: Int{
                return 11
            }
        }
        
        class someClass{
            class var computedTypeProperty: Int{
                return 12
            }
        }
        
        
        println("someStruct.storedTypeProperty == \(someStruct.storedTypeProperty)");
        println("someStruct.computedTypeProperty == \(someStruct.computedTypeProperty)")
        println("someEnum.storeTypeProperty == \(someEnum.storeTypeProperty)")
        println("someEnum.computedTypeProperty \(someEnum.computedTypeProperty)")
        println("someClass.computedTypeProperty == \(someClass.computedTypeProperty)")
        
        struct AudioChannle{
            static let thresholdLevel = 10 //声明类型属性常量
            static var maxInputLevelForAllChannels = 0 //声明类型属性变量
            var currentLeavel: Int = 0{
                didSet{//属性监视器
                    if currentLeavel > AudioChannle.thresholdLevel{
                        //设置新值
                        currentLeavel = AudioChannle.thresholdLevel
                    }
                    if currentLeavel > AudioChannle.maxInputLevelForAllChannels{
                        AudioChannle.maxInputLevelForAllChannels = currentLeavel
                    }
                }
            }
        }
        
        var leftChannle = AudioChannle()
        leftChannle.currentLeavel = 11//didSet只会调用一次
        println("currentLeavel == \(leftChannle.currentLeavel)")
        println("AudioChannle.maxInputLevelForAllChannels == \(AudioChannle.maxInputLevelForAllChannels)")//输出类型属性
        
        var rightChannle = AudioChannle()
        rightChannle.currentLeavel = 9
        println("currentLeavel2 == \(leftChannle.currentLeavel)")
        println("AudioChannle.maxInputLevelForAllChannels2 == \(AudioChannle.maxInputLevelForAllChannels)")//currentLeavel值不会变
    }
    
    /****************************************方法*****************************/
    //结构体和枚举能够定义方法是 Swift 与 C/Objective-C 的主要区别之一。在 Objective-C 中,类是唯一能定义方法的类型。但在 Swift 中,你不仅能选择是否要定义一个类/结构体/枚举,还能灵活的在你创建的类型(类/结构体/枚举)上定义方法
    func learnMethodChapter(){
        
        class Counter{
            var temp = 0
            func pluse(){
                temp++;
                self.temp++
            }
            
            func miuns(amount:Int)->Int{
                temp -= amount
                return temp
            }
            
            func reset(){
                temp = 0
            }
            
            func caculateSpaceBy(width: Int,length: Int,height: Int)()->Int{
                var appendVar = 0
                appendVar = width*length*height
                return appendVar
            }
            func caculateValue(a: Double,_: Double,_: Double)()->Double{//缺省
                return a
            }
        }
        
        var counter = Counter()
        counter.pluse()
        println("counter.temp1 === \(counter.temp)");
        counter.miuns(10)
        println("counter.temp2 === \(counter.temp)")
        counter.reset()
        println("counter.temp3 === \(counter.temp)")
        
        //因为方法就是函数,只是这个函数与这个类型相关联了
       let space = counter.caculateSpaceBy(10, length: 20, height: 30)
        println("space == \(space)")
        var value = counter.caculateValue(2, 1,1 )
        println("vaule == \(value)")
        
        //类型的每一个实例都有一个隐含属性叫做 self,self完全等同于该实例本身,实例方法的某个参数名称与实例的某个属性名称相同的时候,参数名称享有优先权,这个时候需要通过self属性区分参数名称和属性名称
        class distinguishClass{
            var x = 100
            func addFunc(x: Int,y: Int)()->Bool{
                if self.x > x{
                    return true
                }else{
                    return false
                }
            }
        }
        
        var distinguish = distinguishClass()
        let success = distinguish.addFunc(10, y: 0)
        println("success is \(success)")
        
        //结构体和枚举是值类型。一般情况下,值类型的属性不能在它的实例方法中被修改,如果需要需改值属性，那么可以在方法前面加上mutating关键字，然后方法就可以从方法内部改变它的属性;并且它做的任何改变在方法结束时还会保留在原始结构中。方法还可以给它隐含的 self 属性赋值一个全新的实例,这 个新实例在方法结束后将替换原来的实例。
        
        struct Point{
            var x = 0.0,y = 0.0
            mutating func moveByY(deltX: Double,y deltY: Double)->Double{
//                x += deltX
//                y += deltY
//                return x*y
                self = Point(x: x+deltX, y: y+deltY)
                return x*y
            }
        }
        
        var point = Point(x: 5, y: 6)
        var vaule = point.moveByY(2, y: 4)
        println("vaule == \(vaule)")
        
        //枚举的变异方法可以把 self 设置为相同的枚举类型中不同的成员
        enum lampSwitch{
            case off,low,high
            mutating func changeToNext(){
                switch self{
                case off:
                    self = low
                case low:
                    self = high
                case high:
                    self = off
                }
            }
        }
        var low = lampSwitch.off//使用一个值初始化
        
        low.changeToNext()
        low.changeToNext()
        println("low == \(low)")
        
        //类型方法(对应oc类方法)
        //声明类的类型方法,在方法的 func 关键字之前加上关键字 class;声明结构 体和枚举的类型方法,在方法的 func 关键字之前加上关键字 static
        //结构体和枚举类型方法、
        //类的类型方法
        class SomeClass{
            class func someTypeMethod(){
                println("hello everybody!")
            }
        }
        SomeClass.someTypeMethod()
        
        struct someStruct{
            static var a = 10
            static func test1(){
             println("a === \(self.a),self is === \(self)")
            }
        }
        someStruct.test1()
        
        enum someEnum{
            static var b = 11.0
            static func test2(){
                println("b === \(self.b),self is === \(self)")
            }
            //使用self来消除静态属性和静态方法参数之间的歧义
            static func test4(a: Double,b: Double){
                if self.b > b{
                    println("\(self.b) 大于, \(b)")
                    self.test2()//一个类型方法可以调用该类型中的另一个类型方法，并且不需要在前面加上该类型前缀
                }
            }
        }
        someEnum.test2()
        someEnum.test4(10, b: 10)
        
        //示例
        struct LevelTracker{
            static var highLockLeveal = 0
            static func unLockLeveal(level: Int){
                if level > highLockLeveal{
                    highLockLeveal = level
                }
            }
            
            static func isUnLockLeveal(level: Int)->Bool{
                //访问静态属性变量highLockLeveal
                return level <= highLockLeveal
            }
            var currentLevel = 1
            //修改值类型属性
            mutating  func advanceLevel(level: Int)->Bool{
                if LevelTracker.isUnLockLeveal(level){
                    return true
                }else{
                    return false
                }
            }
        }
        
        //声明一个类来调用
        class Player {
            var tracker = LevelTracker()
            let playerName: String
            func completedLevel(level: Int) {
                LevelTracker.unLockLeveal(level)
                tracker.advanceLevel(level+1)
            }
            init(name: String) {
                playerName = name
            }
        }
        //声明一个类实例
        var player = Player(name: "Agyrios")
        player.completedLevel(11)
        println("highLockLevel is \(LevelTracker.highLockLeveal)")
        println("LevelTracker.highLockLeveal is \(LevelTracker.highLockLeveal)")
        
        player = Player(name: "test")
        player.completedLevel(2)
        if player.tracker.advanceLevel(8){
            println("highLockLevel is \(LevelTracker.highLockLeveal)")
            println("LevelTracker.highLockLeveal is \(LevelTracker.highLockLeveal)")
        }else{
            print("level 6 has been locked!")
        }
    }
    
    /****************************************附属脚本*****************************/
    //可以定义在类(Class)、结构体(structure)和枚举(enumeration)这些目标中,可以认为是访问对象、集合或序列的快捷方式,不需要再调用实例的特定的赋值和访问方法。
    func learnSubScript(){
        struct TimesTable{
            let multerPlier: Int
            subscript(index: Int)->Int{//
                get{
                return multerPlier*index //只读
                }
                set(newValue){
                    var a = 0
                    a = newValue //newValue 的类型必须和附属脚本定义的返回类型相同
                    println("newValue is == \(a)")//不走
                }
            }
        }
        var timesTable = TimesTable(multerPlier: 10)
        println("timesTable index six == \(timesTable[3])")
        
        
        struct Matrix{
            let rows: Int,column: Int
            //声明一个数组变量
            var grid: [Double]
            //初始化
            init(rows: Int,column: Int){
              self.rows = rows
              self.column = column
            grid = Array(count: rows * column, repeatedValue: 0)//初始化数组
            }
            //声明方法
            func indexIsVaildForRow(row: Int,colunm: Int)-> Bool{
                return row >= 0 && row < rows && column >= 0 && column < column
            }
            //脚本
            subscript(row: Int,column: Int)-> Double{
                get{
                    assert(indexIsVaildForRow(row, colunm: column),"index is out rang")
                    return grid[(row * column)+column]
                }
                set{
//                    assert(indexIsVaildForRow(row, colunm: column), "index out of rang")
                    grid[(row * column)+column] = newValue
                }
            }
        }
        
        var matrix = Matrix(rows: 2, column: 2)
        println("matrix is ==\(matrix)")
        matrix[0,1] = 1.5
        matrix[1,0] = 2.0
        println("grid ==  \(matrix.grid)")
    }
    
    /****************************************继承*****************************/
    //一个类可以继承另一个类的方法，属性，和其他特性，类可以调用和访问超类的方法，属性，附属脚本，并且可以重写这些方法，还可以为继承来的属性添加属性观察器。初始化器默认是不继承的。
    
    func learnInheritChapter(){
        //声明一个类
        class Vehicle{
            var numberOfWheels: Int
            var maxPassengers: Int
            func description()->String{
                return "\(numberOfWheels) wheels ,\(maxPassengers) passengers limited!"
            }
            //初始化构造方法
            init(){
                numberOfWheels = 0
                maxPassengers = 1
            }
        }
        
        let vehicle = Vehicle()
        
        //声明一个继承自Vehicle的子类
        class Bicycle: Vehicle {
            //复写初始化init方法,init方法默认不是继承
            override init(){
                super.init()
                numberOfWheels = 2
            }
            func ride(){
                println("have \(numberOfWheels) wheels,can ride!")
            }
        }
        //声明一个实例
        let bicycle = Bicycle()
        println("description is === \(bicycle.description())")
        println("=== \(bicycle.ride())")
        //子类只允许修改从超类继承来的变量属性,而不能修改继承来的常量属性。但是一个类的实例方法会被这个类的所有子类继 承
        
        //再次继承
        class Tandam: Bicycle{
           override init() {
                super.init()
                maxPassengers = 2
            }
        }
        
        let tandam = Tandam()
        println("tandam description === \(tandam.description())")
        
        //重写重载，继承自父类的实例方法，类方法，属性，附属脚本，达到自己需要的实现，称为重载。
        //override 关键字会提醒 Swift 编译器去检查该类的超类(或其中一个父类)是否有匹配重写版本的声明。这个检查可以确保你的重写定义是正确的。
        //重载方法
        class Car: Bicycle{
            var speed: Double = 100.0
           override init(){
                super.init()
                maxPassengers = 5
                numberOfWheels = 4
            }
            private override func description() -> String {
                return super.description() + "," + "running at \(speed) km/h"
            }
        }
        
        let car = Car()
        println("car description === \(car.description())")

       //重写属性，可以复写setter和getter方法，但是不能只复写setter方法而不复写getter方法，也不能将一个属性复写只读属性,并且复写的属性的类型和名称要一致
        class SpeedLimitedCar: Car{
            override var speed: Double{
                get{
                    return super.speed
                }
                
                set{
                    super.speed = min(newValue, 40)
                }
            }
        }
        
        //调用
        var limitedSpeedCar = SpeedLimitedCar()
        println("limitedSpeedCar == \(limitedSpeedCar.speed)")
        
        //复写属性观察器,可以为继承来的属性添加一个观察器，当继承来的属性值发生改变时候，会被自动通知，但是不饿能够为常量属性和只读属性添加属性观察器，因为它们不能够被改变。不能够同时复写属性观察器和属性的setter、getter方法。
        class AutomaticCar:Car{
            var geer = 1
            override var speed: Double{
                didSet{
                    geer = Int(speed/10)+1
                }
            }
            
            override init() {
            
            }
            
            override func description() -> String {
                return super.description()+" in geer \(geer)"
            }
        }
        
        let automticCar = AutomaticCar()
        automticCar.speed = 40
        println("AutomticCar is === \(automticCar.description())")
        
        //防止重写
        //可以添加@final关键字，防止被重写，在clas前面添加final关键字标记整个类都不能被重写
        
        /****************************************构造器*****************************/
        //类和结构体在实例创建时,必须为所有存储型属性设置合适的初始值。存储型属性的值不能处于一个未知的状态
       /* struct Fahrenheit{
            //声明一个存储型变量
            var temperature: Double
            //构造方法不带参数
            init(){
                temperature = 48
            }
        }*/
        
        struct Fahrenheit{
            //直接赋默认值
            var temperature = 48
        }
        
        var f = Fahrenheit()
        println("temperature === \(f.temperature)")
        
        //构造参数
        struct Celsius{
            var temperatureIncelsius = 0.0
            //自定义构造参数
            init(fromFahrenheit hrenheit: Double){
                temperatureIncelsius = (hrenheit - 32.0)/18
            }
            
            init(fromKevin kevin: Double){
                temperatureIncelsius = kevin-273.15
            }
            
            //缺省外部参数名称
            init(ignorArg: Double){
                temperatureIncelsius = ignorArg
            }
            
            //不提供外部参数构造方法
            init(_ temp: Double){
                temperatureIncelsius = temp
            }
        }
        
        let hrenheitCelsius = Celsius(fromFahrenheit: 100)
        let kevinCelsius = Celsius(fromKevin: 273.15)
        let ignorCelsius = Celsius(12)
        println("ignorCelsius.temperatureIncelsius === \(ignorCelsius.temperatureIncelsius)")
        let tempCelius = Celsius(10)
        println("tempCelius.temperatureIncelsius === \(tempCelius.temperatureIncelsius)")
        
        //只要构造器定义了某个外部参数名,你就必须使用它,忽略它将导致编译错误
        //定义一个颜色结构体
        struct Colors{
            let red = 0.0,green = 0.0,blue = 0.0
            init(red: Double,green: Double,blue: Double){
//                self.init()
//                self.red = red
//                self.green = green
//                self.blue = blue
            }
            
        
        }
        
        let color = Colors(red: 255.0, green: 255.0, blue: 255.0)

        //可选属性类型,可选类型的属性将自动初始化为空 nil,表示这个属性是故意在初始化时 设置为空的
        class SuveryQuestion{
            var text: String
            var response: String?
            init(text: String){
                self.text = text
            }
            
            func ask(){
                println(text)
            }
        }
        
        let question = SuveryQuestion(text: "Are you ready?")
        question.ask()
        question.response = "Yes, i do!"
        
        //对某个类实例来说,它的常量属性只能在定义它的类的构造过程中修改;不能在子类中修改

        struct RenterStruct{
            let rentPrice: Double
            let driver: Int
            var passgers = 0
            init(rentPrice: Double,driver: Int){
                self.driver = driver;
                self.rentPrice = rentPrice
            }
        }
        
        var renter = RenterStruct(rentPrice: 100, driver: 1)
        renter.passgers = 4
        
        //Swift将为所有属性已提供默认值的且自身没有定义任何构造器的结构体或基类,提供一个默认的构造器
        class ShoppingList{
            var name: String?
            var purchsed = false
            var quality = 1
            init(){
                self.name = ""
                self.purchsed = true
                self.quality = 1
            }
            }
        var shop = ShoppingList()
        
        
        //属性有默认值，自动获得初始化方法
        struct Size{
            var width = 0.0,height = 0.0
        }
        var size = Size(width: 10, height: 10)
        
        //值类型构造代理，￼构造器可以通过调用其它构造器来完成实例的部分构造过程。这一过程称为构造器代理,它能减少多个构造器间的代码重复，值类型没有继承。
        struct Point{
            var x = 0.0,y = 0.0
        }

        struct Rect{
            var size = Size()
            var point = Point()
            init(){
                
            }
            
            //自定义构造方法
            init(center: Point,size: Size){
                self.size = size
                self.point = center
            }
            
            //代理构造
            init(origin: Point,size: Size){
                //提前
                self.init(center: Point(x: 20, y: 20),size: Size(width: 30, height: 30))
                self.point = origin
                self.size = size
            }
        }
        
        //类的继承和构造过程
        //类里面的所有存储型属性--包括所有继承自父类的属性--都必须在构造过程中设置初始值。
        //跟Objective-C 中的子类不同,Swift 中的子类不会默认继承父类的构造器。Swift的这种机制可以防止一个父类的简单构造器被一个更专业的子类继承,并被错误的用来创建子类的实例
        //指定构造器必须总是向上代理,便利构造器必须总是横向代理
        
        /*
        Swift 编译器将执行 4 种有效的安全检查,以确保两段式构造过程能顺利完成:
        安全检查 1 指定构造器必须保证它所在类引入的所有属性都必须先初始化完成,之后才能将其它构造
        任务向上代理给父类中的构造器。
        如上所述,一个对象的内存只有在其所有存储型属性确定之后才能完全初始化。为了满足
        这一规则,指定构造器必须保证它所在类引入的属性在它往上代理之前先完成初始化。
        安全检查 2 指定构造器必须先向上代理调用父类构造器,然后再为继承的属性设置新值。如果没这么
        做,指定构造器赋予的新值将被父类中的构造器所覆盖。
        安全检查 3 便利构造器必须先代理调用同一类中的其它构造器,然后再为任意属性赋新值。如果没这 么做,便利构造器赋予的新值将被同一类中其它指定构造器所覆盖。
        安全检查 4 构造器在第一阶段构造完成之前,不能调用任何实例方法、不能读取任何实例属性的值, 也不能引用 self 的值。
        */
        
        //两段式构造过程中基于上述安全检查的构造流程
        /*
        阶段 1
        某个指定构造器或便利构造器被调用; 完成新实例内存的分配,但此时内存还没有被初始化;
        指定构造器确保其所在类引入的所有存储型属性都已赋初值。存储型属性所属的内存完成
        初始化;
        指定构造器将调用父类的构造器,完成父类属性的初始化;
        这个调用父类构造器的过程沿着构造器链一直往上执行,直到到达构造器链的最顶部;
        当到达了构造器链最顶部,且已确保所有实例包含的存储型属性都已经赋值,这个实例的 内存被认为已经完全初始化。此时阶段 1 完成。
        阶段 2
        从顶部构造器链一直往下,每个构造器链中类的指定构造器都有机会进一步定制实例。构
        造器此时可以访问 self、修改它的属性并调用实例方法等等。 最终,任意构造器链中的便利构造器可以有机会定制实例和使用 self。
        */
        
        //便利构造器在init之前加上convenience
        class Food{
            var name: String?
            init(name: String){
            self.name = name
            }
            //便利构造方法
            convenience init(){
            //需要先调用init
            self.init(name:"[Unamed]")
            }
        }
        
        var food = Food(name: "Jerry")
        println("foodName == \(food.name)")
        let food2 = Food()
        println("foodName2 == \(food.name)")
        
        class RecipeIngredient: Food {
            var quantity: Int
             init(name: String, quantity: Int) {
            self.quantity = quantity
            super.init(name: name)
            }
        override convenience init(name: String) {
            self.init(name: name, quantity: 1)
            }
        }
        
        var ingredient1 = RecipeIngredient(name: "Kebo", quantity: 2)
        println("quantity == \(ingredient1.quantity)","name === \(ingredient1.name)")
        var ingredient2 = RecipeIngredient(name: "Koo")
        println("name2 === \(ingredient2.name)")
        
        class ShopListItem:RecipeIngredient{
            var purchesed = false
            //计算属性，提供getter、setter方法
            var description: String{
            var outPut = "\(quantity) x \(name?.lowercaseString)"
            return outPut
            }
        }
        //初始化
        var shopListItem1 = ShopListItem()
        println("name1=== \(shopListItem1.name)" ,"quantity1 == \(shopListItem1.quantity)")
        var shopListItem2 = ShopListItem(name: "Dor")
        println("name2=== \(shopListItem2.name)", "quantity2 == \(shopListItem2.quantity)")
        var shopListItem3 = ShopListItem(name: "Sery", quantity: 3)
        println("name3=== \(shopListItem3.name)", "quantity3 == \(shopListItem3.quantity)")

        //声明一个数组
        var breakFastList = [
         ShopListItem(),
         ShopListItem(name: "Dor"),
         ShopListItem(name: "Sery", quantity: 3),
        ]
        breakFastList[0].name = "Orange Juice"
        breakFastList[0].purchesed = true
        for item in breakFastList{
                println("===== \(item.name)","++++ \(item.purchesed)")
        }
        
       //闭包和函数设置属性默认值
        //如果某个存储型属性的默认值需要特别的定制或准备,你就可以使用闭包或全局函数来为其属性某供定制的默认值。每当某个属性所属的新类型实例创建时,对应的闭包或函数会被调用,而它们的返回值会当做默认值赋值给这个属性。
       //闭包后面跟一对大括号，表示立刻执行该闭包，如果忽略这对大括号，那么就是将闭包本身赋值给属性，而不是将返回值付给属性
//        struct CheckBoards{
//            let boardColors: Bool[] = {//将闭包的返回值付给属性数组boardColors
//            var tempBoard  = Bool[]() //声明一个闭包属性
//            var isBlack = false
//            for i in 1...10{
//            for j in 1...10{
//               tempBoard.append(isBlack)
//               isBlack = !isBlack
//              }
//            isBlack = !isBlack
//            }
//            return tempBoard
//            }()
//            
//            func squareBlackAtRow(row: Int,column: Int)->Bool{
//               return boardColors[(row*10) + column]
//            }
//        }
        
//        var checkBoard = CheckBoards
//        println("---  \(checkBoard.squareBlackAtRow(0, column: 1))")
//        println("---  \(checkBoard.squareBlackAtRow(1, column: 0))")
        
        //
    }
    
    /****************************************反初始化*****************************/
    //在类的实例被释放前，反初始化函数deinit被调用，只适用于类类型，并且只有一个反初始化方法，不带任何参数，不允许调用自己的反初始化函数
    
    func learnDeinitChapter(){
        struct Bank{
            static var coinsInBank = 10_000 //静态变量
            static func vendCoins(var numberOfConis: Int)->Int{//声明一个变量参数，可以直接使用，不用再声明一个变量
                numberOfConis = min(numberOfConis, coinsInBank)
                return numberOfConis
            }
            //静态方法
            static func recevieConis(conis: Int){
                coinsInBank += conis
            }
        }
        
        class Player {
            var coinsInPurse: Int
            init(coins: Int){
                coinsInPurse = Bank.vendCoins(coins)
            }
            func winsCoins(coins: Int){
                coinsInPurse += Bank.vendCoins(coins)
            }
            //析构反初始化
            deinit{
                Bank.recevieConis(coinsInPurse)
            }
        }
        
        var playerFirst:Player? = Player(coins: 100)//？是可选类型，实例后面加!号表示值确定了，不能为nil
        var numberCoins = playerFirst!.coinsInPurse
        println("numberCoins == \(numberCoins)")
        playerFirst!.winsCoins(3_000)
        //实例后面添加感叹号进行修饰
        println("numberCoins1 == \(playerFirst!.coinsInPurse)")
        
        //释放实例变量,自动调用析构函数
        playerFirst = nil;
        println("coinsInBank == \(Bank.coinsInBank)")
    }
    
    /****************************************ARC*****************************/
    //引用计数只应用在类的实例。结构体(Structure)和枚举类型是值类型,并非引用类型,不是以引用的方式来存储和传递的
   func learnARCChapter(){
    class Personal{
    var name: String
    var department: DepartMent?//可选类型
    init(name: String){
    self.name = name
    }
    
    deinit{
    println("Personal is deinit!")
     }
    }
    
    class DepartMent {
    var numberOfPersonal: Int
    weak var perosnal: Personal?//可选类型
    init(numberOfPersonal: Int){
    self.numberOfPersonal = numberOfPersonal
    }
    
    deinit{
    println("Department is Deinit!")
     }
    }
    
    //声明一个可选变量
    var dulante: Personal? //因为是可选类型，初始化为nil
    var number711: DepartMent?
    //初始化实例对象
    dulante = Personal(name: "dulante applesed")
    number711 = DepartMent(numberOfPersonal: 11)
    //赋值
    dulante?.department = number711
    number711?.perosnal = dulante
    //以上dulante引用number711，同时number711引用dulante，造成循环引用，不能够释放
    //释放变量也不能够释放
    dulante = nil//没有调用deinit打印Personal is deinit!
    number711 = nil//没有调用deinit打印Department is Deinit!
    //swfit提供两种方式避免循环引用，弱引用和无主引用
    //对于生命周期中引用会变为 nil 的实例,使用弱引用;对于初始化时赋值之后引用再也不会赋值为 nil 的实例,使用无主引用。
    //弱引用只能声明为变量类型,因为运行时它的值可能改变。弱引用绝对不能声明为常量。
    //无主引用，无主引用只能是非可选类型，始终有默认值，在变量前面可以添加unowned表示。
    
    class CreditCard{//一张卡肯定对应一个人，是常量
        var  number: Int
        unowned let customer: Customer//必须要指定初始化函数初始化
        init(number: Int,custome: Customer){
            self.number = number
            self.customer = custome
        }
        deinit{
            println("Card #\(number) is deinit!")
        }
    }
    
    class Customer{//人不一定拥有一张卡
        
        var name: String?
        var card: CreditCard? //初始化为nil
        init(name: String){
            self.name = name
        }
        deinit{
            println("Customer #\(name) is deinit!")
        }
    }
    var jone = Customer(name: "jone")
    var card = CreditCard(number: 100, custome: jone)
    jone.card = card
    
    //两个属性都必须有值,且初始化完成后不能为 nil。这种场景下,则 要一个类用无主引用属性,另一个类用隐式展开的可选属性。
    //隐式展开的可选属性。
    class Capital{
        var name: String?
        //一个城市肯定属于一个国家，但是一个国家可以拥有多个城市
        unowned let country: Country
        init(name: String,country: Country){
        self.name = name
        self.country = country
        }
        deinit{
         
        }
    }
    
    class Country{
        var name: String
        let captial: String!
        init(name: String,captial: String){
            self.name = name
            self.captial = captial
        }
        deinit{
            
        }
    }
    var country = Country(name: "US", captial: "NewYork")
    println("country name is === \(country.name),captial name is ==== \(country.captial)")
    
    //闭包强引用
    //只要在闭包内使用 self 的成员,就要用 self.someProperty 或者self.someMethod(而非只是 someProperty 或 someMethod)。这可以提醒你可能会不小心 就占有了 self。
//    class HTML{
//        let name: String
//        let text: String?
//       @lazy var asHTML:() -> String = {
//            if let text = self.text{
//                return self.text
//            }else{
//                return self.text
//            }
//        }
//        init(name: String,text: String? = nil){
//            self.name = name
//            self.text = text
//        }
//    }
    
    //占位列表，占有列表定义了闭包内占有一个或者多个引用类型的规则。和解决两个类实例间的强引 用环一样,声明每个占有的引用为弱引用或无主引用,而不是强引用。根据代码关系来决定使用弱引用还是无主引用,占有列表中的每个元素都是由 weak 或者 unowned 关键字和实例的引用,每一对都在花括号中,通过逗号分开。例如[unowned self]
    /*class P{
        var name: String?
        let id: Int
        @lazy var Score: ()-> String = {
            //占位列表
            [unowned self] in
            return "100"
        }
        init(name: String? = nil,id: Int){
            self.name = name
            self.id = id
        }
        
        deinit{
            println("p is deinit !\(name)")
        }
    }
    var p = P(name: "Dan", id: 100001)*/
    
    //自判断链接
    //如果自判断的目标有值,那么调用 就会成功;相反,如果选择的目标为空(nil),则这种调用将返回空(nil)
    class Person{
        var residence: Residence? = nil
    }
    
    class Residence {
        var numberOfRooms = 1
    }
    
    //此时residence为nil
    let john = Person()
    //此时john.residence已经初始化不为nil
    john.residence = Residence()
    //报运行时态错误
//    let roomCount = john.residence!.numberOfRooms
    if let roomCount = john.residence?.numberOfRooms{
        println("John's residence has \(roomCount) room(s)")
    }else{
        println("Unable to retrieve the number of rooms.")
    }
    
    //为自判断链接定义模型类
   
    class Residence1 {
        var rooms = []
        var numberOfRooms: Int {
            return rooms.count
        }
        var address: Address?
        subscript(i: Int) -> Room {
            get {
                return rooms[i] as! Room
            }
            
        }
        func printNumberOfRooms() {
            println("The number of rooms is \(numberOfRooms)")
        }

    }
    
    class Room {
        let name: String
        init(name: String) { self.name = name }
    }
    
    class Address {
        var buildingName: String?
        var buildingNumber: String?
        var street: String?
        func buildingIdentifier() -> String? {
            if buildingName != nil {
                return buildingName
            } else if buildingNumber != nil {
                return buildingNumber
            } else {
                return nil
            }
        }
    }
    let jonh = Person()
    //如果有值
    if let roomCount = jonh.residence?.numberOfRooms{
        println("roomCount has \(roomCount)")
    }else{
        println("Unable to retrieve the number of rooms.")
    }
    
    //调用方法
//    if jonh.residence?.printNumberOfRooms() != nil {
//        
//    }else{
//        
//    }
    
    //访问脚本下标取值
//    if let firstRoomName = jonh.residence?.[0].name{
//        
//    }else{
//        
//    }
    
//    jonh.residence?.[0] = Room
    var testScore = ["Davd": [90,70,68],"Bev": [80,87,85]]
    testScore["Davd"]?[0] = 87//替换第一个角标原色
    testScore["Bev"]?[2] = 83
    testScore["Bev"]?[0]++ //“Bev”对应数组第一个元素+1 输出是81
    println("testScore === \(testScore)")

    //多层连接
//    if let jonhStree = jonh.residence?.address?.street{
//    
//    }
    }
    
    /****************************************类型转换*****************************/
    func learnTypeCast(){
        //类型转换，使用is和as操作符，这两个操作符提供了一种简单达意的方式去 检查值的类型或者转换它的类型
        class Personal{
            var name:String?
            init(name:String){
                self.name = name
            }
        }
        
        //继承自Personal
        class Student:Personal{
            var scoal:Double
            init(scoal:Double,name:String){
                self.scoal = scoal
                super.init(name: name);
            }
        }
        
        //继承自Personal
        class Teacher:Personal{
            var level: Int?
            init(level: Int,name: String){
                self.level = level
                super.init(name: name)
            }
        }
        
        let arrays = [Personal(name: "lee"),
                      Student(scoal: 100, name: "Mark"),
                      Student(scoal: 90, name: "Tim"),
                      Teacher(level: 10, name: "Tom"),
                      Teacher(level: 8, name: "Andy")]
        //遍历
        var studentCount = 0
        var teacherCount = 0
        for item in arrays{//item实质是Personal类型
            if item is Student{
                studentCount++
            }else if item is Teacher{
                teacherCount++
            }
        }
        println("studentCount == \(studentCount),teacherCount == \(teacherCount)")
        
        //类型向下转型
        for item in arrays{
            if let student = item as? Student{
                println("student == \(student.scoal)")
            }else if let teacher = item as? Teacher{
                println("teacher == \(teacher.level)")
            }
        }
        //Any和AnyObject转换
        //AnyObject可以表示任何Class类型的实例
        //Any表示任何类型，除了方法类型
        
        let someObject: [AnyObject] = [
//            Personal(name: "lee"),
            Student(scoal: 100, name: "Mark"),
            Student(scoal: 90, name: "Tim"),
//            Teacher(level: 10, name: "Tom"),
        ]
        
        for items in someObject{
            let student = items as! Student
            println("name1 == \(student.name),scoal1 == \(student.scoal)")
        }
        
        for item in someObject as! [Student]{
            println("name2 == \(item.name),scoal2 == \(item.scoal)")
        }
        
        //Any类型,使用Any类型可以添加各种不同类型混合在一起
        var things = [Any]()
        things.append("1")
        things.append(2)
        things.append(2.0)
//        things.append((10,30))//添加元组
        things.append(Student(scoal: 90, name: "Tim"))//添加对象
        
        for item in things{
            switch item{
            case 0 as Int:
                println("zero is int!")
            case 0 as Double:
                println("zero is double!")
            case let someInt as Int:
                println("an integer value of \(someInt)")
            default:
                println("default!")
            }
        }
        
        
    }
    
    /********************************************类型嵌套****************************************/
    func learnNestTypeCharpter(){
        struct BlacJackCard{
            //嵌套枚举
            enum Suit:Character{
                case Spades = "♦️",Hearts = "❤️",Diamonds = "♠️",Clubs = "♣️"
            }
            enum Rank:Int{
                case Two = 2,Three,Four,Five,Six,Seven,Eight,Nine,Ten
                case Jack,Queen,King,Ace
                //定义一个结构体
                struct Values {
                    //默认有个初始化方法
                    let first: Int, second: Int?
                }
                //计算属性
                var vaules:Values{
                    switch self{
                    case .Ace:
                        return Values(first: 1, second: 10)
                    case .Jack,.Queen,.King:
                        return Values(first: 1, second: nil)
                    default:
                        return Values(first: self.rawValue, second: nil)
                    }
                }
                
            }
        }
        
    }
    
    /********************************************扩展****************************************/
    //扩展就是向一个已有的类、结构体或枚举类型添加新功能(functionality)
    //￼注意:扩展可以添加新的计算属性,但是不可以添加存储属性,也不可以向已有属性添加属 性观测器(property observers)
    func learnExtensionChapter(){
        
        let onInch = 25.4.mm        // 0.0254
        let threeFeet = 3.ft        // 0.914399970739201
        println("onInch == \(onInch)")
        
        let defaultRect = Rect()
        let assginRect = Rect(point: Point(x: 10, y: 20), size: Size(width: 100, height: 200))
        let centerRect = Rect(center: Point(x: 20, y: 30), size: Size(width: 200, height: 300))
        centerRect.instanceFunc()//实例方法
        Rect.test()//静态方法
        
        //调用扩展中的方法
        3.reptitions { () -> () in
            println("Hello!")
        }
        
        2.reptitions{
            println("world!")
        }
        
        var value = 10
        var result = value.square()
        println("result == \(result)")
        
        println("subscript == \(1238[2])")

        func printLetterKinds(word :String){
        println("\(word)is made up of the following kinds of letters!")
        for character in word{
        switch character.kind{
        case .Vowel:
            println("Vowel")
        case .Consonant:
            println("Consonant")
        case .Other:
            println("Other")
        }
         }
            }
                    
        printLetterKinds("HHeeww")
    }
            
    /********************************************协议****************************************/
    func learnProtoclChapter(){
            
            struct Personal: FullNamed{
            var fullName: String
            }
            
           let name = Personal(fullName: "LeeRiHuang")
            
            class StartFish: FullNamed,RandomNumber{//包含要实现的协议
                var prefix: String?
                var name: String
                init(prefix: String? = nil,name: String){
                self.prefix = prefix
                self.name = name
                }
                var fullName: String{//实现协议中定义的变量
                return prefix!+name
                }
                
                var a = 100.90,b = 3219.7,c = 4567.8,lastRandom = 32.8
                func random()->Double{
                    lastRandom = ((a*lastRandom+c)%b)
                    return lastRandom
                }
            }
            
            let fullName = StartFish(prefix: "US", name: "Jonal")
            println("fullName == \(fullName)")
            let randomVaule = fullName.random()
            println("randomVaule === \(randomVaule)")
            
            //用 class 实现协议中的 mutating 方法时,不用写 mutating 关键字;用结构体,枚举
           // 实现协议中的 mutating 方法时,必须写 mutating 关键字
            enum OnOffSwitch:Toggolable{
                case On,Off
                mutating func toggle(){//实现代理方法
                switch self{
                case On:
                  self = On
                case .Off:
                  self = Off
                 }
               }
            }
           var lightSwitch = OnOffSwitch.Off
           lightSwitch.toggle()
           println("toggle == \(lightSwitch.toggle())")
            
            class LinearCongruentialGenerator: RandomNumber {
                    var lastRandom = 42.0
                    let m = 139968.0
                    let a = 3877.0
                    let c = 29573.0
                    func random() -> Double {
                    lastRandom = ((lastRandom * a + c) % m)
                    return lastRandom / m
                    }
            }
            
           class Dice{
                    let sides: Int
                    let generator:LinearCongruentialGenerator
                    init(sides: Int,generator: LinearCongruentialGenerator){
                    self.sides = sides
                    self.generator = generator
                    }
                    
                    func roll()->Int{
                       return (Int)(generator.random() * Double(sides))+1
                    }
            }
            
            var dice = Dice(sides: 6, generator: LinearCongruentialGenerator())
            for _ in 1...5 {
                println("dice == \(dice.roll())")
            }
        
        //协议代理模式
        //委托是一种设计模式,它允许类或结构体将一些需要它们负责的功能交由(委托)给其他的类型。

        //协议能够继承一到多个其他协议。语法与类的继承相似,多个协议间用逗号,分隔
        //一个协议可由多个协议采用 protocol<SomeProtocol, AnotherProtocol>这样的格式进行组
        //合,称为协议合成(protocol composition)
        //协议合成并不会生成一个新协议类型,而是将多个协议合成为一个临时的协议,超出 范围后立即失效
        struct People:Named,Aged{
            var name: String
            var age: Int
        }
        
        func wishHappyBrithDay(celebrator:protocol<Named,Aged>){//这里传入已经实现合成协议的实例
            println("Happy birthday \(celebrator.name) - you're \(celebrator.age)!")
        }
        
        //初始化
        let people = People(name: "Jone", age: 18)
        wishHappyBrithDay(people)
        
        //检查协议一致性
        //使用 is 检验协议一致性,使用 as 将协议类型向下转换(downcast)为的其他协议类型。检验
        //与转换的语法和之前相同(详情查看类型检查):
        //1. is 操作符用来检查实例是否遵循了􏰀个协议。
        //2. as?返回一个可选值,当实例遵循协议时,返回该协议类型;否则返回 nil
        //3. as 用以强制向下转换型。
        //@objc 用来表示协议是可选的,也可以用来表示暴露给 Objective-C 的代码,此外,
        //￼@objc 型协议只对类有效,因此只能在类中检查协议的一致性
        class Circle: HasAera{
            let ip = 3.1415926
            var radius : Double
            @objc var area: Double
            init(radius: Double,area: Double){
            self.radius = radius
            self.area = area
            }
          }
        
        class Country:HasAera{
                @objc var area: Double
                init(area: Double){
                self.area = area
            }
          }
        
        class Anmial{
            var legs: Int
            init(legs: Int){
                self.legs = legs
            }
          }
        //使用AnyObject包装几个不同类型对象
        let anyArray: [AnyObject] = [
          Circle(radius: 10, area: 200),
          Country(area :3_000),
          Anmial(legs: 4)
        ]
        //遍历
        for object in anyArray{
          if let temp = object as? HasAera{//判断是否显示协议，实现的话返回一个实例，否则返回nil
             println("area is \(temp.area)")
          }else{
            println("don't has any area!")
          }
            
            if object is HasAera{//是否实现了协议
               println("has impletion HasArea!")
            }else{
            println("don't HasArea!")

            }
            
        }
        
        //可选协议要求
        //可选协议含有可选成员,其遵循者可以选择是否实现这些成员。在协议中使用@optional关键字作为前缀来定义可选成员。
        //可选协议只能在含有@objc 前缀的协议中生效。且@objc 的协议只能被类遵循
        @objc class Counter{
            var count = 0//声明一个存储属性变量
            var dataSource: ThreeSource?//声明一个协议类型变量
            init(count: Int,dataSource: ThreeSource){
                self.count = count
                self.dataSource = dataSource
            }

            func incerment(){//定义一个方法
                if let amount = dataSource?.incrementForCount(count){//dataSource可能为空，所以使用?表示只有为非空才去调用incrementForCount,但是dateSource不为空，incrementForCount也可能为空，所以在incrementForCount方法后面添加？
                    count += amount
                }else if let amount = dataSource?.fixedIncrementCoun{
                    count += amount
                }
            }
        }
        
        class ThreeSource: CounterDataSource {
             let fixedIncrement = 3
            func incrementForCount(count: Int)->Int{
                return count
            }
            var fixedIncrementCoun: Int {
                return fixedIncrement
            }
        }

        class TowardsToZero:CounterDataSource {
        func incrementForCount(count: Int) -> Int {
                if count == 0{
            return 0
        }else if count < 0{
            return -1
        }else{
            return 1
            }
          }
        }
        
        var counter = Counter(count: 2,dataSource: ThreeSource())
        for _ in 0...4{
            counter.incerment()
            println("count === \(counter.count)")
        }
        counter.count = -5
        counter.dataSource = ThreeSource()
        
        }
    
   
    /********************************************泛型****************************************/
    func learnGenericesCharpter(){
        func swapValue(inout a:Int,inout b:Int)->AnyObject{
          let tempValue = a
          a = b
          b = tempValue
        
        return [a,b]
        }
        var a = 10
        var b = 20
        var value = swapValue(&a, &b)
        println("value == \(value)")
        
        func swapTwoValues<T>(inout a:T,inout b:T){
            let tempValue = a
            a = b
            b = tempValue
            println("a===\(a),b === \(b)")
        }
        var someInt = 3
        var anotherInt = 107
        swapTwoValues(&someInt, &anotherInt)
        
        var stack = Stack<Int>()
        stack.push(1)
        stack.push(2)
        stack.push(3)
        stack.push(4)
        
        println("have \(stack.items) items in stack!")
        
        stack.pop()
        println("after pop \(stack.items) in stack!")
        
        //类型约束
        //类型约束指定了一个必须继承自指定类的类型参数，或者遵循一个特定的协议或协议构成
        
        func findIndex(array :[String],vauleToFinde :String)->Int?{
            for (index,value) in enumerate(array){
               //判断
            if value == vauleToFinde{
                return index
            }
          }
            return nil
        }
        
        //使用一个泛型T，后面接一个Equatable协议，表示类型都是可以比较等于的
        func findIndexT<T: Equatable>(array :[T],vauleToFinde :T)->Int?{
            for (index,value) in enumerate(array){
            //判断
            if value == vauleToFinde{
                return index
            }
            }
            return nil
        }
        
        let indexTValue = findIndexT([1,4,8,0], 4)
        println("indexTValue == \(indexTValue)")
        
        
    }
    
    
    }
    


//协议声明
protocol FullNamed{
        var fullName: String{get}//只读属性
}

protocol RandomNumber{
     func random()->Double
}

protocol Toggolable{
    mutating func toggle()//表示可以改变
}

protocol Named{
    var name: String{get}
}

protocol Aged{
    var age: Int{get}
}

@objc protocol HasAera{
        var area: Double{get}
}

@objc protocol CounterDataSource{
    optional func incrementForCount(count: Int)->Int  //加上option表示可选
    optional  var fixedIncrementCoun: Int {get}
}

//单独定义泛型
struct Stack<T> {
    var items = [T]()
    mutating func push(item: T) {
        items.append(item)
    }
    mutating func pop() -> T {
        return items.removeLast()
    }
}