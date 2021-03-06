      ******************************************************************
      *    テストケース：4-4C
      *    プログラム名：日本語化テスト （データ部）VALUE句
      *    処理概要　　：VALUE句指定が誤っているとき、エラー表示されるか
      *                  をチェックする。
      *  --------------------------------------------------------------
      *   テストケース:８〜９
      *   このプログラムはエラーチェックのため、実行できない
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX4-4C.
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
       01  G-08      PIC NNN    VALUE "１２３４５".
       01  G-09      PIC NNN    VALUE "ABC".
       01  GE-08     PIC N/N/N  VALUE "１／２／３／４／５".
       01  GE-09     PIC N/N/N  VALUE "ABC".
       01  ERR-01     PIC NNN    VALUE 123.
       01  ERR-02     PIC NNN    VALUE -123.5.
       01  ERR-03.
           05  ERR-03-1          
           VALUE "01　１月02　２月03　３月04　４月05　５月06　６月" &
                 "07　７月08　８月09　９月10１０月11１１月12１２月".
            10  FILLER          OCCURS 10.
              15  ERR-03-11     PIC 99.
              15  ERR-03-12     PIC NNN.
       01  A-01           PIC AAA            VALUE "１２３４５".
       01  X-01           PIC XXX            VALUE "ＡＢＣ".
       01  N-ZONE         PIC 9999           VALUE "１／２／３／４／５".
       01  N-ZONE-DEC     PIC 999V99         VALUE "あいう".
       01  N-PACK         PIC 9999   COMP-3  VALUE "１２３".
       01  N-PACK-DEC     PIC 99V999 COMP-3  VALUE "９８７".
       01  N-BIN          PIC 9999   COMP    VALUE "１２３".
       01  N-BIN-DEC      PIC 99V999 COMP    VALUE "９８７".
       01  NE-01          PIC --99.999       VALUE "９８７".
       
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX4-4C)".
      *  ケース9.VALUE句のエラーチェック(その１）
      *
            MOVE "P-010-01"             TO CASE-ID.
            DISPLAY  G-08.
            DISPLAY  G-09.
            DISPLAY  GE-08.
            DISPLAY  GE-09.
            DISPLAY  ERR-01.
            DISPLAY  ERR-02.
            DISPLAY  ERR-03-1.
      *  ケース10.VALUE句のエラーチェック(その２）
      *
            MOVE "P-010-02"             TO CASE-ID.
            DISPLAY  A-01.
            DISPLAY  X-01.
            DISPLAY  N-ZONE.
            DISPLAY  N-ZONE-DEC.
            DISPLAY  N-PACK.
            DISPLAY  N-PACK-DEC.
            DISPLAY  N-BIN.
            DISPLAY  N-BIN-DEC.
            DISPLAY  NE-01.
      *
            DISPLAY "TEST END   (EX4-4C)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

