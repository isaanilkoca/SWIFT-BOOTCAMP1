import UIKit

// Optional baska dillerde Nullable = Null safety
//Defination

var mesaj = "galatasaray"

//null nill
var str : String? = nil // str isimli bu degisken bunu kullanırken nil olma ihtimali olan degisken olarak kullanmalısın

str = "isa"


if str != nil { // str nin icerisinde nil yoksa if calıssın
    print(str!) // unwrapped ile optional yazmaz o yazıyı kaldırırız
} else { // varsa else
    print("str nil deger iceriyor")
}

// Optionl Binding

if var temp = str { // str yi bir degiskene aktardık aktarma isleminde nil varsa if ona göre kosul olusturacak
    print(temp) // otomatik unwrapped olur
}else {
    print("str nil deger iceriyor")

}




