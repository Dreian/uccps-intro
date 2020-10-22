#!/bin/bash

echo "[CUBIC]"
echo "test1.in"
time (python3 cubic.py < test1.in > /dev/null)
echo "test2.in"
time (python3 cubic.py < test2.in > /dev/null)
echo
echo
echo "[QUADRATIC]"
echo "test1.in"
time (python3 quadratic.py < test1.in > /dev/null)
echo "test2.in"
time (python3 quadratic.py < test2.in > /dev/null)
echo "test3.in"
time (python3 quadratic.py < test3.in > /dev/null)
echo
echo
echo "[LINEAR]"
echo "test1.in"
time (python3 linear.py < test1.in > /dev/null)
echo "test2.in"
time (python3 linear.py < test2.in > /dev/null)
echo "test3.in"
time (python3 linear.py < test3.in > /dev/null)
echo "test4.in"
time (python3 linear.py < test4.in > /dev/null)
echo
echo
echo "[C++]"
g++ linear.cc -o linear
echo "test1.in"
time (./linear < test1.in > /dev/null)
echo "test2.in"
time (./linear < test2.in > /dev/null)
echo "test3.in"
time (./linear < test3.in > /dev/null)
echo "test4.in"
time (./linear < test4.in > /dev/null)
