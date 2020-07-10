void setup()
{
  size(1360,800);
  background(125);
  fill(255);
  PFont fontA = loadFont("courier");
  textFont(fontA, 30);
  zigBlack = createFont("Source");
}


noStroke();

// position of the car
var x1, x2;
x1 = x2 = 200;
var y1 = 350;
var y2 = 450;
var z = 200;
var c = 30;
var sunRadius = 100;

draw = function() {

    // all lines of code inside here will be run repeatedly
    background(151, 244, 247);
    fill(255, 170, 0);
    ellipse(100, 75, sunRadius, sunRadius); // Mat troi
    for (var i = 0; i < 160; i += 20) {
        drawRec1(i);
        drawRec2(i);
    }; // Vach Dich

    drawGrass(); // Co?
    drawCloud(c, 100); // Ma^y
    c = c + 1;
    if ((c + 150) > 1080) c = 30;
    if ((x1 < 1100) && (z<1100) && (x2<1100)) { // A hoac B hoac C cham dich thi tat ca cac xe dung lai.
        if(x1 < 1100) {
            drawCar(x1 , y1, 115, 'B');  // ve xe A
            x1 = x1 + random(0, 1.5);       // Van toc random cho xe A
        };
        if (z<1100) {
            drawCar1(z, 200, 'A'); // ve xe B
            z = z + random(0, 1.5); // van toc ....
        };
        if(x2 < 1100) {
            drawCar(x2, y2, 50, 'C'); // ve xe C
            x2 = x2 + random(0, 1.5); // van toc...
        }
    } else if (x1 >= 1100) {
        text('\"B\" Car Wins', 600, 500); // cham dich thi hien thi B wins
        drawCar(x1 , y1, 115, 'B'); // 3 dong duoi nay ve lai cac xe khi 1 xe ve dich
        drawCar1(z, 200, 'A');
        drawCar(x2, y2, 50, 'C');
    } else if (z >= 1100) {
        text('\"A\" Car Wins', 600, 500); // cham dich thi hien thi A wins
        drawCar(x1 , y1, 115, 'B'); // 3 dong duoi nay ve lai cac xe khi 1 xe ve dich
        drawCar1(z, 200, 'A');
        drawCar(x2, y2, 50, 'C');
    } else if (x2 >= 1100) {
        text('\"C\" Car Wins', 600, 500); // cham dich thi hien thi C wins
        drawCar(x1 , y1, 115, 'B'); // 3 dong duoi nay ve lai cac xe khi 1 xe ve dich
        drawCar1(z, 200, 'A');
        drawCar(x2, y2, 50, 'C');
    };
}

drawCar = function(var xPoint, var yPoint, var colors, var name){
  // draw the car body
  fill(255, 0, colors);
  rect(xPoint, yPoint, 100, 20);
  rect(xPoint + 15, yPoint-22, 70, 40);

  //car names
  fill(255);
  text(name, xPoint + 40, yPoint);

  // draw the wheels
  fill(77, 66, 66);
  ellipse(xPoint + 25, yPoint+21, 24, 24);
  ellipse(xPoint + 75, yPoint+21, 24, 24);
}

drawCar1 = function(var xPoint, var colors, var name){
  // draw the car body
  fill(255, 0, colors);
  rect(xPoint, 250, 100, 20);
  rect(xPoint + 15, 228, 70, 40);

  //car names
  fill(255);
  text(name, xPoint + 40, 250);

  // draw the wheels
  fill(77, 66, 66);
  ellipse(xPoint + 25, 271, 24, 24);
  ellipse(xPoint + 75, 271, 24, 24);
}


drawCloud = function(var xPoint, var space) {
    //cloud
    fill(255);
    for (int i = 0; i < 100; i++) {
        ellipse(xPoint + space*i -1000, 50, 30, 30);
        ellipse(xPoint + space*i - 1000 + 20, 50, 40, 30);
        ellipse(xPoint + space*i -1000 + 40, 50, 30, 30);
    }
}

drawRec1 = function (times) {                 // vach dich mau den
    for (var i = 0; i <= 500; i += 20) {
        fill(0);
        rect(1200 + times, 150 + i, 10, 10);
    };
    for (var j = 0; j <= 500; j += 20) {
        fill(255);
        rect(1200 + times, 160 + j, 10, 10);
    };
}

drawRec2 = function (times) {                   // vach dich mau trang
    for (var i = 0; i <= 500; i += 20) {
        fill(255);
        rect(1210 + times, 150 + i, 10, 10);
    };
    for (var j = 0; j <= 500; j += 20) {
        fill(0);
        rect(1210 + times, 160 + j, 10, 10);
    };
}

drawGrass = function () {
    fill(0,255,0);
    rect(0, 660, 10000, 10000);
}