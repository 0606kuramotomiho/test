//
function menseki(han,enshu = 3.14){
    return "面積は" + (han * han) * enshu + "с㎡です。<br>";
}
document.write(menseki(5));
document.write(menseki(7));
document.write(menseki(10));

document.write("<br>");
document.write("<br>");

//問2
function park(ad,chi){
    return "合計金額は" + (ad * 500 + chi * 200) + "円です。<br>";
}
document.write(park(2,4));
document.write(park(1,5));
document.write(park(3,7));
