uses crt;

var
casem: byte;

function casemf(var v: byte): byte;
begin
Textcolor(2);
writeln('Да - 1');
Textcolor(4);
writeln('Нет - 0');
Textcolor(15);
Write('Выберите вариант: ');
readln(v);
casemf := v;
end;


function func(var x: real): real;
begin
var f1: real;
f1 := 1 * power(x, 3) + 1 * power(x, 2) - (5) * x + 11;
func := f1;
end;


function func1(var x: real): real;
begin
var f2: real;
f2 := 1 / 4 * power(x, 4) + 1 / 3 * power(x, 3) - 5 / 2 * power(x, 2) + 11 * x;
func1 := f2;
end;


function predel: integer;
begin
ClrScr;
var a, b, h, f, x, S: real;
var n: integer;
Textcolor(5);
Writeln('Вычисление площади фигуры, ограниченной кривой 1*x^3+(1)*x^2-(5)*x+(11)и осью Ох (в положительной части по оси Оу)');
Textcolor(3);
print('Введите пределы интегрирования "a"<"b":');
readln(a, b);
print('Количество интервалов разбиения:');
readln(n);
h := (b - a) / n;
x := a+h/2;
for var i := 0 to n - 1 do
begin
f := func(x);
S := S + f;
x := x + h;
end;
S := s*h;
Textcolor(10);
writeln('Ответ ', S);
writeln;
Textcolor(15);
writeln('Вывести погрешность полученного результата?');
casem := casemf(casem);
case casem of
1:
begin
Textcolor(6);
writeln('Погрешность = ', abs((func1(b) - func1(a)) - S):10:3);
end;
0:
else
textcolor(black);
Textbackground(red);
writeln('Нет такого выбора!!!');
textbackground(black);
textcolor(white);
end;
writeln;
Textcolor(15);
writeln('Начать заново?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
textcolor(red);
writeln('Спасибо за использование данной программы, ждём снова!');
textcolor(white);
exit()
end
else
textcolor(black);
Textbackground(red);
writeln('Нет такого выбора!!!');
writeln('Перезапустите программу!!!');
textbackground(black);
textcolor(white);
end;
predel := 0;
end;


begin
ClrScr;
Textcolor(5);
Writeln('Вычисление площади фигуры, ограниченной кривой 1*x^3+(1)*x^2-(5)*x+(11) и осью Ох (в положительной части по оси Оу)');
Textcolor(3);
Writeln('Ввести пределы интегрирования в ручную?');
casem := casemf(casem);
case casem of
1: predel;
0:
begin
textcolor(red);
writeln('Спасибо за использование данной программы, ждём снова!');
textcolor(white);
exit()
end
else
textcolor(black);
Textbackground(red);
writeln('Нет такого выбора!!!');
writeln('Перезапустите программу!!!');
textbackground(black);
textcolor(white);
end;
end.