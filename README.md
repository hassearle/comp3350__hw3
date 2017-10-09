# comp3350__hw3

Due: 10/17/2017 by 11:59pm

You may submit the homework up to 24 hours late for a 20% penalty.

 

Deliverables:                                                                     
                                  

Submit the source file (.asm) to Canvas before the due date.  This should be the
only file you should submit to Canvas.

The file should be named {USERNAME}-HW{NUMBER}.asm

E.g. abc0003-HW3.asm

 

Specifications:

The objective of this assignment is to create a program that will read a value
from an array, and then place this value in another array with the location 
shifted by a certain amount.  The array may be of any length from 2 to 100.  Your
program must be flexible enough to produce the correct solution regardless of the 
array size.

 

Design:

Create a BYTE array with the label ‘input’. This array may be of any length 
between 2 and 100.

Create a BYTE array with the label ‘output’. This array should be the same length
as ‘input’.

Create a DWORD variable with the label ‘shift’. ‘shift’ should hold a single 
value.  The value of ‘shift’ must be less than the length of ‘input’.

The program should then read each of the values from the array ‘input’ and place 
the values into the ‘output’ array but the location should be shifted by the 
amount in the ‘shift’ variable.  If the shift would cause a value to be outside 
of the bounds of ‘output’, then the values should “wrap around” to the front of 
‘output’.

For example:

My ‘input’ array is 5,0A,3,6,0C

‘shift’ is 3

The proper solution for ‘output’ is 3,6,0C,5,0A

 

As you can see the value ‘5’ is the 1st value in the ‘input’ array.  The value 
‘5’ then shifts 3 to the 4th value in the ‘output’ array.  Also note that the 
value ‘3’ is the 3rd value in the ‘input’ array.  After a shift of 3 this would 
take the 3 out of bounds for the ‘output’ array (it is the same length as the 
‘input’ array).  The 3 must “wrap around” to front of the ‘output’ array.  This 
also holds true for 6 and 0C.

 

Remember that your program must be flexible enough to handle an array of any 
length.  Just because you test it with an array of length 6 does not mean that I 
will test it with an array of length 6. I could test with an array of length 2 or 
100 or any number in between.

 

