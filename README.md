
# Assembly Language Programs

## About the Project
This repository contains basic Assembly Language programs written using NASM (Netwide Assembler) and executed on Ubuntu.

## Technologies Used
- Assembly Language (x86-64)
- NASM
- Ubuntu Linux

## Programs Included
1. Addition of Two Numbers
2. 16-bit Addition
3. String Palindrome
4. Dynamic Input Programs

## How to Run

### 1. Install NASM
```bash
sudo apt update
sudo apt install nasm
```

### 2. Create an Assembly File
```bash
nano add.asm
```

### 3. Assemble the Code
```bash
nasm -f elf64 add.asm -o add.o
```

### 4. Link the Object File
```bash
gcc -no-pie add.o -o add
```

### 5. Execute the Program
```bash
./add
```

## Author
Somnath Kadabagaonkar

## Programs Included

| Sr. No. | Program Name | Description | File |
|:---:|---|---|---|
| 1 | Palindrome | Checks whether the given string is a palindrome or not. | [Palindrome.asm](Palindrome.asm) |
| 2 | String Operations | Performs basic string operations using Assembly Language. | [stringOperations.asm](stringOpreations.asm) |
