      ******************************************************************
      *    テストケース：QA98
      *    プログラム名：日本語化テスト （添え字参照）
      *    処理概要　　：添え字参照が正しく実行されるかをチェックする。
      *  --------------------------------------------------------------
      *   テストケース:１〜７
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-98.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-24.
       DATE-COMPILED.        2011-08-24.
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
       01  OMIT-WK            PIC X.
       01  CASE-ID            PIC X(10).
       01  W-LENG      PIC S9(5).

       01  X-01          PIC X(10).
       01  A-01          PIC A(5).
       01  ZONE-01       PIC 9(3).
       01  PACK-01       PIC S9(3)V9(3)  COMP-3.
       01  BIN-01        PIC S9(5)       COMP.
       01  G-01          PIC N(8).
       01  GE-01         PIC N/NNN/N.

       01  GRP-01.
           05  GRP-01-DEF.
               10  FILLER    PIC X(10) VALUE "0123456789".
               10  FILLER    PIC X(10) VALUE "abcdefghij".
               10  FILLER    PIC X(10) VALUE "klmnopqrst".
               10  FILLER    PIC X(10) VALUE "uvwxyz    ".
               10  FILLER    PIC X(10) VALUE "あいうえお".
               10  FILLER    PIC X(10) VALUE "かきくけこ".
               10  FILLER    PIC X(10) VALUE "ＡＢＣＤＥ".
               10  FILLER    PIC X(10) VALUE "ＦＧＨＩＪ".
           05  GRP-01-RED-1  REDEFINES GRP-01-DEF.
               10  GRP-01-X  PIC X(10)  OCCURS 8.
           05  GRP-01-RED-2  REDEFINES GRP-01-DEF.
               10  GRP-01-N2 PIC N(05)  OCCURS 8.
           05  GRP-01-RED-3  REDEFINES GRP-01-DEF.
               10  GRP-01-N3 PIC N(10)  OCCURS 4.
           05  GRP-01-RED-4  REDEFINES GRP-01-DEF.
               10  GRP-01-N4 PIC N(20)  OCCURS 2.
           05  GRP-01-RED-5  REDEFINES GRP-01-DEF.
               10  GRP-01-N5 PIC N(02)  OCCURS 20.
               

       01  GRP-02.
           05  GRP-02-1  PIC X(5).                       *>5
           05  FILLER    PIC A(5).                       *>5
           05  GRP-02-3  PIC 9(5)  OCCURS 4.             *>20
           05  GRP-02-4  PIC N(5).                       *>10
           05  GRP-02-5  PIC S9(5)V9(3)  COMP-3.         *>5

       01  GRP-03.
           05  GRP-03-1  PIC X(5).                       *>5
           05  GRP-03-2  PIC A(5).                       *>5
           05  GRP-03-3  PIC 9(5).                       *>5
           05  GRP-03-4  PIC N(5)  OCCURS 1 TO 10        *>10*n
                                   DEPENDING ON GRP-03-3.
                                   
       01  WK-I          PIC S9(3).
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (QA-98)".
      *ケース1.基本データ項目
            MOVE "P-010-01"        TO CASE-ID.
            IF GRP-01-X(1) = "0123456789"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-X(1)
            END-IF.
      *
            MOVE "P-010-02"        TO CASE-ID.
            IF GRP-01-X(5) = "あいうえお"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-X(5)
            END-IF.
      *
            MOVE "P-010-03"        TO CASE-ID.
            IF GRP-01-N2(5) = "あいうえお"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N2(5)
            END-IF.
      *
            MOVE "P-010-04"        TO CASE-ID.
            IF GRP-01-N2(7) = "ＡＢＣＤＥ"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N2(7)
            END-IF.
      *
            MOVE "P-010-05"        TO CASE-ID.
            IF GRP-01-N3(3) = "あいうえおかきくけこ"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N3(3)
            END-IF.
      *
            MOVE "P-010-06"        TO CASE-ID.
            IF GRP-01-N3(4) = "ＡＢＣＤＥＦＧＨＩＪ"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N3(4)
            END-IF.
      *
            MOVE "P-010-07"        TO CASE-ID.
            IF GRP-01-N4(2) = "あいうえおかきくけこＡＢＣＤＥＦＧＨＩＪ"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N4(2)
            END-IF.
      *
            MOVE "P-010-08"        TO CASE-ID.
            IF GRP-01-N5(11) = "あい"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N5(11)
            END-IF.
      *
            MOVE "P-010-09"        TO CASE-ID.
            IF GRP-01-N5(13) = "おか"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N5(13)
            END-IF.
      *
            MOVE "P-010-10"        TO CASE-ID.
            IF GRP-01-N5(20) = "ＩＪ"
                                     DISPLAY CASE-ID "OK"
               ELSE                  DISPLAY CASE-ID "NG:" GRP-01-N5(20)
            END-IF.
      *
            MOVE "P-010-11"        TO CASE-ID.
            MOVE 2 to WK-I.
            IF GRP-01-N4(WK-I) = 
               "あいうえおかきくけこＡＢＣＤＥＦＧＨＩＪ"
                                DISPLAY CASE-ID "OK"
               ELSE             DISPLAY CASE-ID "NG:" GRP-01-N4(WK-I)
            END-IF.
      *
            MOVE "P-010-12"        TO CASE-ID.
            MOVE 0 TO WK-I
            IF GRP-01-N5(WK-I) = "おか"
                                DISPLAY CASE-ID "OK"
               ELSE             DISPLAY CASE-ID "NG:" GRP-01-N5(WK-I)
            END-IF.
      *
            MOVE "P-010-13"        TO CASE-ID.
            MOVE -1 TO WK-I
            IF GRP-01-N5(WK-I) = "おか"
                                DISPLAY CASE-ID "OK"
               ELSE             DISPLAY CASE-ID "NG:" GRP-01-N5(WK-I)
            END-IF.
      *
            DISPLAY "TEST END   (EX6-2)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

