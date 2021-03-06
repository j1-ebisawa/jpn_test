      ******************************************************************
      *    テストケース：5-4C
      *    プログラム名：日本語化テスト （手続き部）INSPECT命令
      *    処理概要    ：INSPECT命令が正しく実行されるかをチェックする。
      *  --------------------------------------------------------------
      *   テストケース:４８〜６１
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           EX5-4C.
       AUTHOR.               TSH.
       DATE-WRITTEN.         2011-08-25.
       DATE-COMPILED.        2011-08-25.
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
       01  W-TALLY  PIC 999.
       01  G-01     PIC N(10).
       01  GE-01    PIC NN/NNNN/NN.
       01  G-03-1   PIC N.
       01  G-03-2   PIC NN.
       01  G-04-1   PIC N.
       01  G-04-2   PIC NN.
       01  G-05-1   PIC N.
       01  G-05-2   PIC NN.
       01  G-06-1   PIC N.
       01  G-06-2   PIC NN.
       01  G-07-1   PIC N.
       01  G-07-2   PIC NN.
       01  G-08-1   PIC N.
       01  G-08-2   PIC NN.

      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (EX5-4C)".
      *ケース48.一意名１、定数5、定数6（CONVERTING,ALL指定）
            MOVE "P-480-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊き＊＊＊" TO GE-01.
            INSPECT G-01 CONVERTING "＊" TO "＠".
            IF G-01 = "あい＠＠おかき＠＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-480-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "＊" TO "＠".
            IF GE-01 = "あき／＠＠き＠／＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース49：一意名１、定数5、定数6、定数7（CONVERTING,BEFORE指定）
            MOVE "P-490-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊か＊＊＊" TO GE-01.
            INSPECT G-01 CONVERTING "＊" TO "＠" BEFORE "か".
            IF G-01 = "あい＠＠おかき＊＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-490-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "＊" TO "＠" BEFORE "か".
            IF GE-01 = "あき／＠＠か＊／＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース50：一意名１、定数5、定数6、定数７（CONVERTING,AFTER指定）
            MOVE "P-500-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊か＊＊＊" TO GE-01.
            INSPECT G-01 CONVERTING "＊" TO "＠" AFTER "か".
            IF G-01 = "あい＊＊おかき＠＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-500-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING "＊" TO "＠"  AFTER "か".
            IF GE-01 = "あき／＊＊か＠／＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース51：一意名１、一意名6、一意名７（CONVERTING）
            MOVE "P-510-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊き＊＊＊" TO GE-01.
            MOVE "＊" TO G-06-1.
            MOVE "＠" TO G-07-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1.
            IF G-01 = "あい＠＠おかき＠＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
            
            MOVE "P-510-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1.
            IF GE-01 = "あき／＠＠き＠／＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース52：一意名１、一意名6、一意名7、一意名8（CONVERTING,BEFORE指定）
            MOVE "P-520-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊か＊＊＊" TO GE-01.
            MOVE "＊" TO G-06-1.
            MOVE "＠" TO G-07-1
            MOVE "か" TO G-08-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1 BEFORE G-08-1.
            IF G-01 = "あい＠＠おかき＊＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-520-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1 BEFORE G-08-1.
            IF GE-01 = "あき／＠＠か＊／＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース53：一意名１、一意名6、一意名7、一意名8（CONVERTING,AFTER指定）
            MOVE "P-530-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊か＊＊＊" TO GE-01.
            MOVE "＊" TO G-06-1.
            MOVE "＠" TO G-07-1
            MOVE "か" TO G-08-1.
            
            INSPECT G-01 CONVERTING G-06-1 TO G-07-1 AFTER G-08-1.
            IF G-01 = "あい＊＊おかき＠＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-530-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-06-1 TO G-07-1 AFTER G-08-1.
            IF GE-01 = "あき／＊＊か＠／＠＠" 
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース54：一意名１、定数3、定数4、定数7（CONVERTING,2文字指定,BEFORE指定）
            MOVE "P-540-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "＊＊＊い＊＊き＊" TO GE-01.

            INSPECT G-01 CONVERTING "＊お" TO "＠＠" BEFORE "き＊".
            IF G-01 = "あい＊＠＠かき＊＊＊"                              *>20111107
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-540-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING  "い＊" TO "＠＠" BEFORE "き＊".
            IF GE-01 = "＠＠／＠＠＠＠／き＊"                             *>20111107
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
      *ケース55：一意名１、一意名4、一意名5、一意名8（CONVERTING,2文字指定,AFTER指定）
            MOVE "P-550-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊＊" TO G-01.
            MOVE "あき＊＊き＊＊＊" TO GE-01.
            MOVE "＊＊" TO G-04-2.
            MOVE "＠＠" TO G-05-2
            MOVE "き＊" TO G-08-2.

            INSPECT G-01 CONVERTING G-04-2 TO G-05-2 AFTER G-08-2.
            IF G-01 = "あい＊＊おかき＊＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *
            MOVE "P-540-02"        TO CASE-ID.
            INSPECT GE-01 CONVERTING G-04-2 TO G-05-2 AFTER G-08-2.
            IF GE-01 = "あき／＊＊き＊／＠＠"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" GE-01
            END-IF.
            
      *ケース56：繰り返し構文1
            MOVE "P-560-01"        TO CASE-ID.
            MOVE "あい＊＊おかき＊＊え" TO G-01.
            
            INSPECT G-01 REPLACING ALL "あ" BY "か"
                                   ALL "い" BY "き".
            IF G-01 = "かき＊＊おかき＊＊え"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *ケース57：繰り返し構文2
            MOVE "P-570-01"        TO CASE-ID.
            MOVE "あ＊い＊＊かき＊＊＊" TO G-01.
            
            INSPECT G-01 REPLACING ALL "＊" BY "＠"
                                   AFTER "い" BEFORE "か".
            IF G-01 = "あ＊い＠＠かき＊＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *ケース58：繰り返し構文３
            MOVE "P-580-01"        TO CASE-ID.
            MOVE "＊い＊かき＊＊かき＊" TO G-01.
            
            INSPECT G-01 TALLYING W-TALLY FOR ALL "＊" AFTER "い"
                         REPLACING ALL "かき" BY "さし" BEFORE "＊＊".
            IF G-01 = "＊い＊さし＊＊かき＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *ケース59：その他１
            MOVE "P-590-01"        TO CASE-ID.
            MOVE "＊＠＊＊＊＊＊＊＊＊" TO G-01.
            
            INSPECT G-01 REPLACING ALL "＊＊＊" BY "＃＃＃"
            IF G-01 = "＊＠＃＃＃＃＃＃＊＊"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *ケース60：その他２（表意定数）
            MOVE "P-600-01"        TO CASE-ID.
            MOVE "１２３４５６７８９０" TO G-01.
            
            INSPECT G-01 REPLACING ALL "５６" BY SPACE
            IF G-01 = "１２３４　　７８９０"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *ケース61：その他３（表意定数）
            MOVE "P-610-01"        TO CASE-ID.
            MOVE "１２３４５６７８９０" TO G-01.
            
            INSPECT G-01 REPLACING ALL "５" BY QUOTE
            IF G-01 = "１２３４”６７８９０"
                  DISPLAY CASE-ID "OK"
            ELSE  DISPLAY CASE-ID "NG:" G-01
            END-IF.

      *
            DISPLAY "TEST END   (EX5-4C)".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

