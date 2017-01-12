function convert(text) {
    var i ;
    var c = text;
    var d = c.split("");
    var d1=""

    for(i=0;i<d.length;i++) {
        if(d[i] == "G") {
            d1=d1+"C";
        }
        else if(d[i] == "C") {
            d1=d1+"G";
        }
        else if(d[i] == "T") {
            d1=d1+"A";
        }
        else if(d[i] == "A") {
            d1=d1+"U";
        }
        else {
            alert("invalid input");
            return;
        }
    }
    document.getElementById("result").innerHTML ="DNA:"+c;
    document.getElementById("result1").innerHTML ="RNA:"+d1;
}
