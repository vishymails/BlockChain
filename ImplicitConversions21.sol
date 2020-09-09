/*
Explicit Conversion

We can explicitly convert a data type to another using constructor syntax.

int8 y = -3;
uint x = uint(y);
//Now x = 0xfffff..fd == two complement representation of -3 in 256 bit format.

Conversion to smaller type costs higher order bits.

uint32 a = 0x12345678;
uint16 b = uint16(a); // b = 0x5678

Conversion to higher type adds padding bits to the left.

uint16 a = 0x1234;
uint32 b = uint32(a); // b = 0x00001234 

Conversion to smaller byte costs higher order data.

bytes2 a = 0x1234;
bytes1 b = bytes1(a); // b = 0x12

Conversion to larger byte add padding bits to the right.

bytes2 a = 0x1234;
bytes4 b = bytes4(a); // b = 0x12340000

Conversion between fixed size bytes and int is only possible when both are of same size.

bytes2 a = 0x1234;
uint32 b = uint16(a); // b = 0x00001234
uint32 c = uint32(bytes4(a)); // c = 0x12340000
uint8 d = uint8(uint16(a)); // d = 0x34
uint8 e = uint8(bytes1(a)); // e = 0x12

Hexadecimal numbers can be assigned to any integer type if no truncation is needed.

uint8 a = 12; // no error
uint32 b = 1234; // no error
uint16 c = 0x123456; // error, as truncation required to 0x3456






In solidity we can use wei, finney, szabo or ether as a suffix to a literal to be used to convert various ether based denominations. Lowest unit is wei and 1e12 represents 1 x 1012.

assert(1 wei == 1);
assert(1 szabo == 1e12);
assert(1 finney == 1e15);
assert(1 ether == 1e18);
assert(2 ether == 2000 fenny);

Time Units

Similar to currency, Solidity has time units where lowest unit is second and we can use seconds, minutes, hours, days and weeks as suffix to denote time.

assert(1 seconds == 1);
assert(1 minutes == 60 seconds);
assert(1 hours == 60 minutes);
assert(1 day == 24 hours);
assert(1 week == 7 days);




*/
