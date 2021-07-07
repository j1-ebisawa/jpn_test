       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-62.
       AUTHOR.               TSH.
      ******************************************************************
       ENVIRONMENT           DIVISION.
      ******************************************************************
       CONFIGURATION         SECTION.
       SOURCE-COMPUTER.      PC.
       OBJECT-COMPUTER.      PC.
       SPECIAL-NAMES.
      ******************************************************************
       DATA                  DIVISION.
      ******************************************************************
      ******************************************************************
       WORKING-STORAGE       SECTION.
      ******************************************************************
       01  OMIT-WK           PIC X.
       01  CASE-ID           PIC X(10).
       01  X-01              PIC X(10).
       01  G-01              PIC N(10).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
      * 
            perform S01-PROC.
      *
            *>ACCEPT OMIT-WK.
            GOBACK
            .
       S01-PROC.
            display X-01.
