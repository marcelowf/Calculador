# Calculador COBOL Project

This is a simple COBOL calculator project. The calculator takes two numbers and an operation, providing the corresponding result. Additionally, it uses the `BOOK` data structure to store information and incorporates interesting COBOL programming techniques.

## Project Structure

- **CALCULADOR.cob**: The main COBOL program.
- **BOOK.cob**: Copy file containing common data definitions.
- **README.md**: This file.

## Usage

1. Compile the program using a COBOL compiler, for example: `cobc -x CALCULADOR.cob`.
2. Run the compiled program, for example: `./CALCULADOR`.

When running the program, you will be prompted to enter your name, user level, and date. After input, you will provide values and the desired operation. The result will be displayed, and the program will terminate.

## Interesting Techniques

### 1. Usage of Copy File (BOOK.cob)

The `BOOK.cob` file contains shared data definitions across different parts of the program. This makes maintaining and updating common information easier.

### 2. Flow Control Structure

The program utilizes COBOL flow control structures such as `IF...ELSE` and `EVALUATE...WHEN` to make decisions based on user inputs.

### 3. Date Handling

Date manipulation is done using the `ACCEPT WK-DATE FROM DATE YYYYMMDD` statement to retrieve the system date.

### 4. Sub-Program Usage

The code is organized into subroutines (procedures) such as `Identify-User`. This improves code readability and maintenance.

## How to Use

1. **Compile and Run the Program:**
   To compile:
   'cobc -x CALCULADOR.cob'
   
   To run:
   './CALCULADOR.cob'
