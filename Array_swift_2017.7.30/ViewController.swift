//
//  ViewController.swift
//  Array_swift_2017.7.30
//
//  Created by YunHe Lee on 2017/7/31.
//  Copyright © 2017年 YunHe Lee. All rights reserved.
//
/*
 swift 数组的定义，以及使用 
 特点：灵活
 */
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: 数组的定义
    func demo() {
        // [String] 自动推到结果 与OC 内部指定泛型类似
        //oc 基本数据类型要包装  swift  不需要包装
        //nsnumber nsvalue
        let array = ["1","2","3","4"];
        let p = CGPoint(x:10,y:20);
        let array1 = [p]
        print(array)
        print(array1)
        //混合开数组类型  // 如果类型不一致 自动推到的几个为NSObject 
        // swift 还有一个类型  就是anyObject
        // swift 一个类可以没有父类
        // 在混合的数组中Cg结构体需要包装
        
    }
    //MARK:遍历
    func forDemo() {
        //  6中遍历方法
        let array  = ["1","2","3","5"]
        //遍历1
        print("---------遍历1-----------")
        for i in 0..<array.count {
            print(i)
        }
        print("---------遍历2-----------")
        //遍历2
        for s in array {
            print(s)
        }
         //遍历3
        //遍历 同时遍历下表和内容
        //使用元组
        print("---------使用元组------------")
        for e in array.enumerated() {
            print("\(e.offset)  \(e.element)")
        }
         //遍历4
         print("---------遍历 同时遍历下表和内容2------------")
        //遍历 同时遍历下表和内容2
        //n 是数组下标记 s 数组元素
        // n  s  可以任意起名
        for (n,s ) in array.enumerated() {
            print("\(n) \(s)")
        }
        //数组遍历反续遍历
        print("---------数组遍历反续遍历------------")
        for a in array.reversed() {
            print(a)
        }
        print("---------反续索引和内容------------")
        //反续索引和内容 错误的  索引和内容不一致
        for (n,s) in array.reversed().enumerated() {
            print("\(n)  \(s)")
        }
        print("---------反续索引和内容------------")
        //先枚举在遍历
        //反续索引和内容 正确的
        for (n,s) in array.enumerated().reversed() {
            print("\(n)  \(s)")
        }
    }
    //MARK:增加 修改 删  合并
    func demo3()  {
        var array = ["1","2","4"]
          // 追加
        array.append("5")
        
        print("------追加-------")
        print(array)
        //修改
        print("------修改-------")
        array[0]="1"
        print(array)
         print("------移除-------")
        array .remove(at: 0);
//        array .removeAll()
        print(array);
        //删除全部并且保留空间
        array .removeAll(keepingCapacity: true)
        print("array is = \(array)  空间 is =\(array.capacity)")
    }
    //MARK:数组的容量
    func demo4()  {
        //可变数组
//        var Marray = ["1","2","3"]
//        //不可变数组
//        let array = ["1","2","3"];
        
        //定义一个数组并且指定数组类型 《没有初始化》
//        var array: [Int]
//        //初始化数组
//        array = [Int]()
        //以上可以合并一句
        //eg:
        var array = [Int]()
        print("初始化容量 ：\(array.capacity)")
        array.append(1)
        //单个元素插入时 如果容量不够会*2 可以避免每次都去分配空间 提高计算效率
        for i in 0..<8 {
            array .append(i)
            print("array is value :\(array) 容量：\(array.capacity)")
        }
    }
    //MARK:数组的合并
    func demo5() {
        var marray = ["1","2","3","4","5"]
        let array = ["3","4","5","6"]
        //要合并的数组的<类型必须一致>
        marray += array
        print("------数组的合并-------")
        print(marray)
    }
    //MARK:集合处理
    /*
     Swift中的Set类型被写为Set<SomeType>,这里的SomeType表示Set中允许存储的类型，和数组不同的是，集合没有等价的简化形式。
     */
    func demoSet()  {
        //
        var letters =  Set<Character>()
        print("letters is of type Set<Character> with \(letters.count) items.")
        letters.insert("a")
        print(letters)
        letters = []
        
    }
}

