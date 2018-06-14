//問１
for(var star = 1; star <= 5; star++){
    document.write("★");
}

document.write("<br>");
document.write("<br>");

//問2
for(var star = 1; star <= 2; star++){
    for(var star1 = 1; star1 <= 3; star1++){
        document.write("★");
    }
        document.write("<br>");
}
   
document.write("<br>");
document.write("<br>");

//問3
for(var danraku = 1;danraku <= 2; danraku++){
    for(var star = 1;star <=5; star++){
        document.write("☆");
    }
    document.write("<br>");
}

document.write("<br>");
document.write("<br>");

//問４
for(var danraku = 1;danraku <= 4; danraku++){
    for(var star = 1;star <=5; star++){
        document.write("★");
    }
    document.write("<br>");
    }

document.write("<br>");
document.write("<br>");

//問5
for(var danraku = 1; danraku <= 5;danraku++){
    for(var star = 1; star <= 3; star++){
        document.write("★");
    }
    document.write("<br>");
}

document.write("<br>");
document.write("<br>");

//問6
for(var danraku = 1; danraku <= 3;danraku++){
    for(var star = 1;star <= 3; star++){
        if(star % 2 == 0){
            document.write("☆");}
        else{
        document.write("★");}
    }
    document.write("<br>");
}

document.write("<br>");
document.write("<br>");

//問7
for(var danraku = 1;danraku <= 4; danraku++){
    for(var star = 1; star <= 5;star++){
        if(star % 2 == 0){
            document.write("☆");}
        else{
            document.write("★");}
    }
    document.write("<br>");
}

document.write("<br>");
document.write("<br>");

//問8 
for(var i = 0; i < 5;i++){
    for(var y = 0; y <=i;y++){
        document.write("★");
    }
    document.write("<br>");
}