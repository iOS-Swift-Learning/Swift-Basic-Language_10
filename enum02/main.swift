//
//  main.swift
//  enum02
//
//  Created by XCODE on 2015/10/22.
//  Copyright © 2015年 Nick. All rights reserved.
//

import Foundation

//可宣告 enum 的型態
enum Classroom:Int{
    
    case mark = 1, nick, mary = 6, david
}

let student = Classroom.mary //此時 sdtudent 並不等於 6,而是等於 Classroom 中的 mary
print("\(student)")
if student == Classroom.mary{
    print("student的值:\(student.rawValue)")
}

let student02 = Classroom.david
if student02 == Classroom.david{//連續記憶體,參照前一個參數,自動配置
    print("student02得值:\(student02.rawValue)")
}

if let student03 = Classroom(rawValue: 2){//避免搜尋不到指定的 rawValue,使用if
    
    print("student03是 \(student03)")
    
}else{
    print("查無此人")
}



