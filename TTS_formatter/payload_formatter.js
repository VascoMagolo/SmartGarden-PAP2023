function hexToDec(hexString) {
    return parseInt(hexString, 16);
}
function Decoder(bytes, port) {
    // Obtenha os dois valores hexadecimais a partir dos bytes recebidos
    var hex1 = bytes[0].toString(16);
    var hex2 = bytes[1].toString(16);
    var hex3 = bytes[2].toString(16);
    var hex4 = bytes[3].toString(16);
    var hex5 = bytes[4].toString(16);
    // Converta os valores hexadecimais em valores decimais
    var dec1 = hexToDec(hex1);
    var dec2 = hexToDec(hex2);
    var dec3 = hexToDec(hex3);  
    var dec4 = hexToDec(hex4);  
    var dec5 = hexToDec(hex5);  
    if (dec3===2){
        return{
            Temperature:dec1,
            Humidity:dec2,
        };
    }
    else if(dec3===1){
        return {
            Temperature:dec1,
            Humidity:dec2,
            TempS:dec4,
            HumS:dec5,
            Relay:"On"
            };   
    }
    else if(dec3===0){
        return {
            Temperature:dec1,
            Humidity:dec2,
            TempS:dec4,
            HumS:dec5,
            Relay:"Off"
        };   
    }
}