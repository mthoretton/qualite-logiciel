#define mutex (critical <= 1)
#define progress (critical == 1)
bit t = 0;
byte critical = 0;
int N = 3; // nombre de processus (drones)
bool d[N]; // instructions effectuées ?
int e = 0;

// to set mutex : critical++
// to remove mutex : critical--

/*

d.i := false
{D.i}
e := i; d.i := true;
k := 0

*[ k < N → [ k = i → skip
             k != i → [ non d.k ou e != i → skip ]
           ]
   k := k+1
 ]
 
y.i := (e=i)
P: {y.i (e=i)} ^ {C.i}

*/

proctype drone(int i) {
    e = i; d[i] = true;
    int k = 0;
    do
    :: k < N ->
        if :: k = i -> skip
           :: k != i ->
              if :: !d[k] || e != i -> skip fi;
        fi; k = k+1;
    :: else -> break
    od
    printf("P%d\n",i);
}

init
{
    assert(t == 0 || t == 1);
    d[0] = false; d[1] = false; d[2] = false;
    atomic
    {
        run drone(0);
        run drone(1);
        run drone(2);
    }
}
