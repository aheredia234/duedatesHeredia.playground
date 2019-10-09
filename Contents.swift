import UIKit

var assignments:[(date: Double, points:Int)] = [(8.07,25),(8.12,35), (8.03,30), (8.17,10)]



func sortBy(x:String)
{
    if(x=="date")
    {
        func byDate(_ d1: (Double,Int), _ d2: (Double,Int)) -> Bool {
            return d1 < d2
        }
       var sDate = assignments.sorted(by: byDate(_:_:))
        
    for y in sDate
        {
            print(y)
        }
    }
    else if(x=="points")
    {
        let sortedP:[(date: Double, points:Int)] = {assignments.sorted(by: {$0.points > $1.points})}()
        for y in sortedP
        {
            print(y)
        }
    }
}

sortBy(x: "date")
print()
sortBy(x: "points")
