import UIKit

var myFruit = ["Apple","Orange","Grapes"]
for numbers in myFruit {
    print(numbers)
}


var myNumbers = [10,20,30,40,50,60,70,80]

for number in myNumbers {
    print(number/5)
}



//void function - değer almayan fonksiyonlar
func mynewFunc(){
    print("this is new function")
    
    

}
mynewFunc()


//int - double - bool function , Değer alabilen fonksiyonlar

func valueFunction(x:Int,y:Int)->String{
    if x<y {
        return "X Y'den kücüktür."
    }
    else{
        return "Y X'den büyüktür"
    }
}
 var sumFuncVeriable = valueFunction(x: 5, y: 9)

print(sumFuncVeriable)



// optionals

var myAge = "9"

var myInteger = Int(myAge) ?? 0 * 5   //eğer integera çeviremez ise 0 ile çarpacak

if let mynewNumber = Int(myAge){  // eğer myAge değişkenini Integer'e çeviremezse else blogunu ekrana basar, If let kullanımı önemli
    print(mynewNumber*5)
}
else{
    print("String değer girdiniz lütfen sayı giriniz")
}






















 
















