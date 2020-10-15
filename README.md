# Rail-Fence-Cipher

"The rail fence cipher (also called a zigzag cipher) is a form of transposition cipher. It derives its name from the way in which it is encoded. In the rail fence cipher, the plain text is written downwards and diagonally on successive "rails" of an imaginary fence, then moving up when the bottom rail is reached. When the top rail is reached, the message is written downwards again until the whole plaintext is written out."
-Wikipedia

## Input
Message: defend the east wall of the castle  
Key: 4

## Output
### Message Rails
"d", " ", " ", " ", " ", " ", "t", " ", " ", " ", " ", " ", "t", " ", " ", " ", " ", " ", "f", " ", " ", " ", " ", " ", "s", " ", " ", " "
" ", "e", " ", " ", " ", "d", " ", "h", " ", " ", " ", "s", " ", "w", " ", " ", " ", "o", " ", "t", " ", " ", " ", "a", " ", "t", " ", " "
" ", " ", "f", " ", "n", " ", " ", " ", "e", " ", "a", " ", " ", " ", "a", " ", "l", " ", " ", " ", "h", " ", "c", " ", " ", " ", "l", " "
" ", " ", " ", "e", " ", " ", " ", " ", " ", "e", " ", " ", " ", " ", " ", "l", " ", " ", " ", " ", " ", "e", " ", " ", " ", " ", " ", "e"

### Cipher
dttfsedhswotatfneaalhcleelee

### Decipher
defendtheeastwallofthecastle
