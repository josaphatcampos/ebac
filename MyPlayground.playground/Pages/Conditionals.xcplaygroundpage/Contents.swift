import Foundation

// 1- Se a Seguinte declaração fosse chamada, qual seria o resultado?

// R - Allowed Access

var state = true

if state == true {
    print("Allowed Access")
} else {
    print("Denied Access")
}


// 2- Crie um loop e usar de condiçoes para saber se o numero é par ou impar, dado a essa variavel:

var arrayNumber: Array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

for x in arrayNumber {
    
    if (x % 2) == 0{
        print("O número \(x) é par")
    }else{
        print("O número \(x) é impar")
    }
    
}

print("=================================================")
print("====================While=============================")
// 3- Tente fazer o mesmo exercicio 2, porem com while
var count = 0
while count < arrayNumber.count {
    
    if (arrayNumber[count] % 2) == 0{
        print("O número \(arrayNumber[count]) é par")
    }else{
        print("O número \(arrayNumber[count]) é impar")
    }
    count += 1
}



