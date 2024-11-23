class Solution {
    func rotateTheBox(_ box: [[Character]]) -> [[Character]] {
        
        var m = box.count // row
        var n = box[0].count // column
        
        var newBox = [[Character]]()
        
        //90 degree rotation
        for i in 0..<n{
            var newRow = [Character]()
            for j in (0..<m).reversed(){
                newRow.append(box[j][i])
            }
            newBox.append(newRow)
        }
        
//        print(newBox)
        newBox.forEach { charArr in
            print(charArr)
        }
        
        m = newBox.count // rows
        n = newBox[0].count // columns
        
        for i in 0..<n{ // each column
            
            var rootPointer = m - 1
            
            
            while rootPointer >= 0{
                //print("root ->",rootPointer)
                if newBox[rootPointer][i] == "."{
                    var checkPointer = rootPointer - 1
                    
                    while checkPointer >= 0{
                        if newBox[checkPointer][i] == "*"{
                            
                            rootPointer = checkPointer
                           // print("new root", rootPointer)
                            break
                        }else if newBox[checkPointer][i] == "#"{
                            break
                        }
                        
                        checkPointer -= 1
                        
                    
                    }
                    
                    //print(rootPointer, checkPointer)
                    
                    if checkPointer != rootPointer , checkPointer >= 0{
                        newBox[rootPointer][i] = newBox[checkPointer][i]
                        newBox[checkPointer][i] = "."
                    }
                    
                }
                
                rootPointer -= 1
                
            }
        }
        print("---------------")
        newBox.forEach { charArr in
            print(charArr)
        }
        
        return newBox
    }
}
