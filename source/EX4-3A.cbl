      ******************************************************************
      *    テストケース：4-3A
      *    プログラム名：日本語化テスト （データ部）USAGE句
      *    処理概要　　：USAGE句を指定できるかをチェックする。
      *  --------------------------------------------------------------
      *   テストケース:１〜２
      ******************************************************************
      * REPLACE ==BYTE-LENGTH== BY ==LENGTH-AN==.
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-3A.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-18.
       DATE-COMPILED.        2011-08-18.
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
       01  G-01               PICTURE N        USAGE NATIONAL.
       01  G-02               PIC NNN          USAGE NATIONAL.
       01  G-03               PIC N(10)        USAGE NATIONAL.
       01  G-04               PIC N(5)NNN(5)   USAGE NATIONAL.
       
       01  GE-01              PICTURE NBN      USAGE NATIONAL.
       01  GE-02              PIC N/N          USAGE NATIONAL.
       01  GE-03              PIC N0N          USAGE NATIONAL.
       01  GE-04              PIC N/NBN0N      USAGE NATIONAL.
       01  wk-len             pic 999.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX4-3A)".
      *  ケース1.日本語データ（N）
      *
            MOVE "P-010-01"             TO CASE-ID.
            MOVE "あ" TO G-01.
            IF G-01 = "あ" 
               AND FUNCTION BYTE-LENGTH(G-01) = 2
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-02"             TO CASE-ID.
            MOVE "あいう"               TO G-02.
            IF G-02 = "あいう" 
               AND FUNCTION BYTE-LENGTH(G-02) = 6
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-03"             TO CASE-ID.
            MOVE "あいうえおかきくけこ" TO G-03.
            IF G-03 = "あいうえおかきくけこ"
               AND FUNCTION BYTE-LENGTH(G-03) = 20
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-010-04"             TO CASE-ID.
            MOVE "１２３４５６７８９０１２" TO G-04.
            IF G-04 = "１２３４５６７８９０１２" 
               AND FUNCTION BYTE-LENGTH(G-04) = 24
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-020. 
      *  ケース2.日本語編集データ(N,B,/,0)
      *
            MOVE "P-020-01"             TO CASE-ID.
            MOVE "あい" TO GE-01
            move FUNCTION BYTE-LENGTH(GE-01) to wk-len
            IF GE-01 = "あ　い"
               AND FUNCTION BYTE-LENGTH(GE-01) = 6
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-01 
                                                        "WK-L=" wk-len
            END-IF.
      *
            MOVE "P-020-02"             TO CASE-ID.
            MOVE "あい"  TO GE-02.  
            IF GE-02 = "あ／い"
               AND FUNCTION BYTE-LENGTH(GE-02) = 6
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-02
            END-IF.
      *
            MOVE "P-020-03"             TO CASE-ID.
            MOVE "あい"  TO GE-03.  
            IF GE-03 = "あ０い"
               AND FUNCTION BYTE-LENGTH(GE-03) = 6
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-03
            END-IF.
      *
            MOVE "P-020-04"             TO CASE-ID.
            MOVE "１２３４"  TO GE-04.  
            IF GE-04 = "１／２　３０４"
               AND FUNCTION BYTE-LENGTH(GE-04) = 14
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" GE-04
            END-IF.
      *
      *
            DISPLAY "TEST END   (EX4-3A)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

