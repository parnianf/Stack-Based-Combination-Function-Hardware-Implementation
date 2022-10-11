# Stack-Based-Combination-Function-Hardware-Implementation
Hardware implementation of a recursive combination function, Computer Aided Design Course (Fall 2021), University of Tehran


The goal of this project is to implement a recursive combination function using a stack. The C implementation of this function is as follows:
```C
int comb(int m, int n) {
    if(m == 0 || m == n) 
        return 1;
    else
        return comb(m, n - 1) + comb(m - 1, n - 1);
}
```
This circuit takes 4-bit `n` and `m` as input and computes `comb(m, n)` as above.

The operation starts with an input signal `start`. When this signal becomes one, the internal registers of the circuit are reset and the value of `n` and `m` is read from the corresponding input and the operation starts. During the operation, if the `start` signal becomes one, the circuit ignores it and continues its work with the current values. After the operation is completed, an output signal `done` becomes one for one clock.

We implemeneted the `comb` function recursively by a stack. The implemented stack supports 2 input signals, and 1 output signal:

* input signals:
  * Push: is used to insert an element at the top of the stack.
  * Pop: is used to get and remove the most recently inserted element.

* output signal:
  * is_empty: is true if the stack is empty.
  
