      ******************************************************************
      *    テストケース：5-4-2
      *    プログラム名：日本語化テスト （手続き部）INSPECT命令
      *    処理概要    ：一意名−１，定数１が日本語のとき、タイプ不一致
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4-2.
       AUTHOR.               LA.
       DATE-WRITTEN.         2011-11-09.
       DATE-COMPILED.        2011-11-09.
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
       01  G-01              PIC N(10).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
      * 
            MOVE "5-4-2"          TO CASE-ID.
            MOVE "あいうえお"     TO G-01.
            INSPECT G-01 REPLACING ALL "あ" BY "AB".
      *      
            IF G-01 = "ABいうえお"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            *>ACCEPT OMIT-WK.
            GOBACK
            .
      
                  
      
       