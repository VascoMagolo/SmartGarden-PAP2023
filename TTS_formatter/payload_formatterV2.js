function Decoder(bytes, port) {
    let hexa=[];
    let deca=[];
    for (let i=0;i<bytes.length;i++){
        hexa[i]=bytes[i].toString(16);
        deca[i]=parseInt(hexa[i], 16);
    }
    if (deca[2]===2){
        return{
            Temperature:deca[0],
            Humidity:deca[1],
        };
    }
    else if(deca[2]===1){
        return {
            Temperature:deca[0],
            Humidity:deca[1],
            TempS:deca[3],
            HumS:deca[4],
            Relay:"On"
        };   
    }
    else if(deca[2]===0){
        return {
            Temperature:deca[0],
            Humidity:deca[1],
            TempS:deca[3],
            HumS:deca[4],
            Relay:"Off"
        };   
    }
}