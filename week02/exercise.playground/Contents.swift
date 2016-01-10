//: Playground - noun: a place where people can play



func week02 ()
{
    var cadena:[String] = [];
    
    for var i = 0; i<101; i++ {
        cadena.removeAll();
        
        if ( (i % 5) == 0) { //divisible por cinco
           cadena.append("Bingo!!!")
        }
        
        if( (i % 2) == 0) {//Par
            cadena.append("Par")
        }
        else { //Impar
            cadena.append("impar")
        }
        
        if (i > 29 && i < 41) {//Entre rango 30 y 40 ambos inclusive
            cadena.append("Viva Swift")
        }
        
        print("\n\(i)" + cadena.joinWithSeparator(", "))
    }
    
    
}

week02()


