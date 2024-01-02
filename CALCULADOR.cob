       IDENTIFICATION DIVISION.
       PROGRAM-ID. CALCULADOR.

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
           COPY 'BOOK.cob'.

       PROCEDURE DIVISION.
       Start-Program.
           PERFORM Identify-User.
           PERFORM Validation-User.
           PERFORM Read-Input.
           PERFORM Make-Decision.
           PERFORM Process-Data.
           PERFORM Display-Result.
           PERFORM End-Program.

       Identify-User.
           DISPLAY 'Nome: '  NO ADVANCING. ACCEPT WK-NAME.
           DISPLAY 'Nivel: '  NO ADVANCING. ACCEPT WK-LEVEL. 
           ACCEPT WK-DATE FROM DATE YYYYMMDD.

       Read-Input.
           DISPLAY 'Primeiro valor: ' NO ADVANCING. ACCEPT WK-N01.
           DISPLAY 'Operacao: ' NO ADVANCING. ACCEPT WK-SIN.
           DISPLAY 'Segundo valor: '  NO ADVANCING. ACCEPT WK-N02.  
       
       Validation-User.
           DISPLAY '=========================='
           
           IF ADM
               DISPLAY 'Bem Vindo ADM ' WK-NAME
           ELSE IF USER OR COWORKER
               DISPLAY 'Bem Vindo USUARIO ' WK-NAME
           ELSE
               DISPLAY 'ACESSO NEGADO'
               PERFORM End-Program
           END-IF.

           DISPLAY 'Data: ' WK-DAY-SYS' DE ' WK-MONTH(WK-MONTH-SYS)
           ' DE ' WK-YEAR-SYS.
           DISPLAY '=========================='.

       Make-Decision.
           EVALUATE WK-SIN
               WHEN '+' PERFORM ADDITION
               WHEN '-' PERFORM SUBTRACTION
               WHEN '/' PERFORM DIVISIONN
               WHEN 'x' PERFORM MULTIPLICATION
               WHEN 'm' IF ADM OR COWORKER PERFORM AVERAGE END-IF
               WHEN OTHER 
                   DISPLAY 'Opcao invalida'
                   PERFORM End-Program
           END-EVALUATE.

       Process-Data.
           ADDITION.
               ADD WK-N01 WK-N02 TO WK-RES.
               MOVE WK-RES TO WK-RES-MASK.
           
           SUBTRACTION.
               SUBTRACT WK-N02 FROM WK-N01 GIVING WK-RES.
               MOVE WK-RES TO WK-RES-MASK.
           
           DIVISIONN.
               DIVIDE WK-N01 BY WK-N02 GIVING WK-RES.
               MOVE WK-RES TO WK-RES-MASK.
           
           MULTIPLICATION.
               MULTIPLY WK-N01 BY WK-N02 GIVING WK-RES.
               MOVE WK-RES TO WK-RES-MASK.
           
           AVERAGE.
               COMPUTE WK-RES = (WK-N01 + WK-N02) / 2.
               MOVE WK-RES TO WK-RES-MASK.

       Display-Result.
           DISPLAY 'Resultado: ' WK-RES-MASK.
           
       End-Program.
           DISPLAY 'Finalizando programa'.
           STOP RUN.
           
       END PROGRAM CALCULADOR.
