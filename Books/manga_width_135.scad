include <tray.scad>

pojemnik_szerokosc = 135; // mm
pojemnik_wysokosc = 80; // mm
pojemnik_glebokosc = 160; // mm
grubosc_scianki = 2; // mm
uchwyt_szerokosc = 20; // mm
uchwyt_wysokosc = 20; // mm
uchwyt_glebokosc = 10; // mm
uchwyt_poszerzenie = 5; //mm

module pojemnik() {
    tray ([pojemnik_szerokosc, pojemnik_glebokosc, pojemnik_wysokosc], curved = false);
}
module uchwyt() {
    translate ([(pojemnik_szerokosc-uchwyt_szerokosc)/2, -uchwyt_glebokosc+grubosc_scianki, pojemnik_wysokosc/2]) cube([uchwyt_szerokosc,uchwyt_glebokosc,uchwyt_wysokosc]);
    translate ([(pojemnik_szerokosc-uchwyt_szerokosc-2*uchwyt_poszerzenie)/2, -uchwyt_glebokosc+grubosc_scianki, pojemnik_wysokosc/2]) cube([uchwyt_szerokosc+2*uchwyt_poszerzenie,(uchwyt_glebokosc-grubosc_scianki)/2,uchwyt_wysokosc+grubosc_scianki]);

}
module lacznik() {
    translate ([(pojemnik_szerokosc-uchwyt_szerokosc-2*uchwyt_poszerzenie)/2-1, pojemnik_glebokosc-grubosc_scianki, pojemnik_wysokosc/2+uchwyt_wysokosc+grubosc_scianki]) cube([uchwyt_szerokosc+2*uchwyt_poszerzenie+2,uchwyt_glebokosc+1,uchwyt_poszerzenie]);
    translate ([(pojemnik_szerokosc-uchwyt_szerokosc-2*uchwyt_poszerzenie)/2-1, pojemnik_glebokosc+2*grubosc_scianki, pojemnik_wysokosc/2+uchwyt_wysokosc+grubosc_scianki-grubosc_scianki]) cube([uchwyt_szerokosc+2*uchwyt_poszerzenie+2,uchwyt_poszerzenie,grubosc_scianki]);
    translate ([(pojemnik_szerokosc-uchwyt_szerokosc-2*uchwyt_poszerzenie)/2-1, pojemnik_glebokosc+2*grubosc_scianki, pojemnik_wysokosc/2]) cube([uchwyt_poszerzenie,uchwyt_poszerzenie,uchwyt_wysokosc+grubosc_scianki]);
    translate ([(pojemnik_szerokosc+uchwyt_szerokosc)/2+1, pojemnik_glebokosc+2*grubosc_scianki, pojemnik_wysokosc/2]) cube([uchwyt_poszerzenie,uchwyt_poszerzenie,uchwyt_wysokosc+grubosc_scianki]);
    
}
pojemnik();
uchwyt();
lacznik();
