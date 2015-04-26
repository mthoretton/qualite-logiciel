#define mutex (critical <= 1)
#define progress (critical == 1)
bit t = 0;
byte critical = 0;

// to set mutex : critical++
// to remove mutex : critical--

proctype P1() {
    printf("P1\n");
}

proctype P2() {
    printf("P2\n");
}

proctype P3() {
    printf("P3\n");
}

init
{
    assert(t == 0 || t == 1);
    atomic
    {
        run P1();
        run P2();
        run P3();
    }
}
