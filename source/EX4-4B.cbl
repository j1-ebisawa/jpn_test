      ******************************************************************
      *    テストケース：4-4B
      *    プログラム名：日本語化テスト （データ部）VALUE句
      *    処理概要　　：VALUE句指定が正しく実行できるかをチェックする。
      *  --------------------------------------------------------------
      *   テストケース:２〜８
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-4B.
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
       78  C-01      VALUE "あいう".
       78  C-02      VALUE "１２３".
       78  C-03      VALUE "１２３".
       78  C-04      VALUE "ＡＢＣ123".
       01  OMIT-WK            PIC X.
       01  CASE-ID            PIC X(10).
       01  G-01      PIC NNN    VALUE C-02.
       01  G-02      PIC NNN    VALUE "かきく".
       01  G-03      PIC NNN    VALUE "さし".
       01  G-04      PIC NNN    VALUE "たち" JUSTIFIED RIGHT.
       01  G-05      PIC NNN    VALUE SPACE.
       01  G-06      PIC NNN    VALUE ALL "＊".
       01  G-07      PIC N(10)  VALUE ALL "１２３".
      *01  G-08      PIC NNN    VALUE "１２３４５".              *>20111019
       01  G-08      PIC NNN    VALUE "１２３".
       01  G-09      PIC NNN    VALUE "ABC".
       
       01  GE-01      PIC N/N/N    VALUE C-03.
       01  GE-02      PIC N/N/N    VALUE "かきく".
       01  GE-03      PIC N/N/N    VALUE "さし".
       01  GE-05      PIC N/N/N    VALUE SPACE.
       01  GE-06      PIC N/N/N    VALUE ALL "＊".
       01  GE-07      PIC N(5)/N(5)  VALUE ALL "１２３".
      *01  GE-08      PIC N/N/N    VALUE "１／２／３／４／５".    *>20111019
       01  GE-08      PIC N/N/N    VALUE "１２３".
       01  GE-09      PIC N/N/N    VALUE "ABC".
       
       01  GRP-DAT-1    VALUE "あいう１／２／３abcdef1234567890".
           05  GRP-01.
               10  GRP-G1-1       PIC NNN.
               10  GRP-G1-2       PIC N/N/N.
           05  GRP-02.
               10  GRP-X1-1       PIC X(6).
               10  GRP-X1-2       PIC X(10).
       01  OCC-DAT-1.
           05  OCC-01          OCCURS 5.
               10  OCC-X1       PIC XXX  VALUE "123".
               10  OCC-G1       PIC NNN  VALUE "あいう".
       01  OCV-DAT-1.
           05  OCV-01          OCCURS 1 TO 100 DEPENDING ON W-OCV-CNT .
               10  OCV-X1       PIC XXX  VALUE "123".
               10  OCV-G1       PIC NNN  VALUE "あいう".
       01  W-OCV-CNT            PIC 999.
       01  W-I                  PIC 999.
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-020. 
            DISPLAY "TEST START (EX4-4B)".
      *  ケース２.日本語項目への初期値(正常系）
      *
            MOVE "P-020-01"             TO CASE-ID.
            IF G-01 = "１２３" 
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-02"             TO CASE-ID.
            IF G-02 = "かきく"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-03"             TO CASE-ID.
            IF G-03 = "さし　"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-04"             TO CASE-ID.
            IF G-04 = "　たち"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-05"             TO CASE-ID.
            IF G-05 = "　　　"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-06"             TO CASE-ID.
            IF G-06 = ALL "＊"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-020-07"             TO CASE-ID.
            IF G-07 = ALL "１２３"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-030. 
      *  ケース３.日本語項目への初期値(特殊系）
      *
            MOVE "P-030-01"             TO CASE-ID.
            IF G-08 = "１２３" 
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            MOVE "P-030-02"             TO CASE-ID.
            IF G-09 = "ＡＢＣ"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG:" G-09
            END-IF.
       P-040. 
      *  ケース４.日本語編集項目への初期値(正常系）
      *
            MOVE "P-040-01"             TO CASE-ID.
            IF GE-01 = "１／２／３" 
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-01
            END-IF.
      *
            MOVE "P-040-02"             TO CASE-ID.
            IF GE-02 = "か／き／く"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-02
            END-IF.
      *
            MOVE "P-040-03"             TO CASE-ID.
            IF GE-03 = "さ／し／　"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-03
            END-IF.
      *
            MOVE "P-040-05"             TO CASE-ID.
            IF GE-05 = "　／　／　"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-05
            END-IF.
      *
            MOVE "P-040-06"             TO CASE-ID.
            IF GE-06 = "＊／＊／＊"                          *>20111019
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-06
            END-IF.
      *
            MOVE "P-040-07"             TO CASE-ID.
            IF GE-07 = "１２３１２／３１２３１"              *>20111019
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-07
            END-IF.
      *
       P-050. 
      *  ケース５.日本語編集項目への初期値(特殊系）
      *
            MOVE "P-050-01"             TO CASE-ID.
            IF GE-08 = "１／２／３" 
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-08
            END-IF.
      *
            MOVE "P-050-02"             TO CASE-ID.
            IF GE-09 = "ＡＢＣ"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
                                        display GE-09
            END-IF.
      *
       P-060. 
      *  ケース６.集団項目への初期値
      *
            MOVE "P-060-01"             TO CASE-ID.
            IF GRP-G1-1 = "あいう" AND GRP-G1-2 = "１／２／３" AND
               GRP-X1-1 = "abcdef" AND GRP-X1-2 = "1234567890"
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-070. 
      *  ケース７.繰り返し項目への初期値
      *
            MOVE "P-070-01"             TO CASE-ID.
            PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > 5
               IF OCC-X1(W-I) = "123" AND 
                  OCC-G1(W-I) = "あいう"
                                CONTINUE
               ELSE             EXIT PERFORM
               END-IF                          *>20111019
            END-PERFORM.
            IF W-I > 5                  DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
       P-080. 
      *  ケース８.繰り返し項目への初期値
      *
            MOVE "P-080-01"             TO CASE-ID.
            PERFORM VARYING W-I FROM 1 BY 1 UNTIL W-I > 5
               IF OCV-X1(W-I) = "123" AND 
                  OCV-G1(W-I) = "あいう"
                                CONTINUE
               ELSE             EXIT PERFORM
               END-IF                              *>20111019
            END-PERFORM.
            IF W-I > 5                  DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"
            END-IF.
      *
            DISPLAY "TEST END   (EX4-4B)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

