import UIKit


class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buyingPrice = 0
        var sellingPrice = 0
        
//        for index in 0..<prices.count-1 {
//            if prices.min()! == prices.last! {
//                break
//            } else if prices[index] == prices.min()!  &&  prices[index] != prices.last!{
//                buyingPrice = prices[index]
//            }
//            sellingPrice = max(sellingPrice, prices[index+1])
////            if prices[index] > prices[index + 1] {
////
////            }
//        }
            
        for price in prices {
            buyingPrice = max(buyingPrice, sellingPrice - price)
            sellingPrice = max(sellingPrice, buyingPrice + price)
        }
        
        return sellingPrice
    }
}

var input1 = [7,1,5,3,6,4]
var input2 = [1,2,3,4,5]
var input3 = [7,6,4,3,1]
var sol = Solution()
sol.maxProfit(input3)
