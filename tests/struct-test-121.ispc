
export uniform int width() { return programCount; }


struct Foo {
    float x;
};

float bar(varying Foo f) { ++f.x; return f.x; }

export void f_fu(uniform float RET[], uniform float aFOO[], uniform float b) {
    float a = aFOO[programIndex];
    varying Foo f = { a };
    bar(f);
    RET[programIndex] = f.x;
}


export void result(uniform float RET[]) {
    RET[programIndex] = 1+programIndex;
}
