//: Playground - noun: a place where people can play

import Cocoa

//func sortArray(array1:[Int], array2:[Int]) -> [Int] {
//}

//

/*
if allArray[i] != allArray[j]{
var a = allArray[j]
print(a)
let newArray:[Int] = allArray

*/




//var array1:[Int] = [2, 5, 4, 7, 5]
//var array2:[Int] = [6, 3, 5, 6, 8]
//let sameArray = ( array1 == array2 )
//sameArray      var sameArray = array1 == array2

//for j in 0...arrayLen {
  //      let sameArray = allArray[i] == allArray[j]
        



func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    var allArray = ( array1 + array2 )
    var arrayLen = allArray.count
    for var i = 0; i < arrayLen; i++ {
        _ = allArray[i]
        for var j = 0; j<arrayLen; j++ {
            if allArray[i] < allArray[j] {
                let swapArray = allArray[i]
                allArray[i] = allArray[j]
                allArray[j] = swapArray
                
                //swap(&allArray[i], &allArray[j])
            }
        }
    }
    var filter = Dictionary<Int,Int>()
    for var index = 0; index < arrayLen  ;index++ {
        let value = allArray[index]
        if (filter[value] != nil) {
            allArray.removeAtIndex(index--)
            arrayLen--
        }else{
            filter[value] = 1
        }
        print(allArray)
    }
    return allArray
}

sortArray([11, 7, 4, 66, 7], array2: [6, 11, 15, 15, 5, 99, 8])

