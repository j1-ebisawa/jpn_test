      ******************************************************************
      *    テストケース：QA-24
      *    プログラム名：日本語化テスト （データ部）PICTURE句
      *    処理概要　　：PICTURE句指定が正しく実行されるかをチェックする。
      *  --------------------------------------------------------------
      *   テストケース:１〜５
      ******************************************************************
      *  REPLACE ==BYTE-LENGTH== BY ==LENGTH-AN==.
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-24.
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
       01  G-09               PIC N(16383).
      * 01  GE-09              PIC N(16382)/.     *>N(16383)/.
       01  G-99               PIC N(16384).
      * 01  GE-99              PIC N(16383)/.     *>N(16383)/.
       01  W-L                PIC 99999999.

       
      ******************************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "TEST START (QA-24)".
      *
       P-050. 
      *  ケース5.限界系（データサイズ）
      *
            MOVE "P-050-01"             TO CASE-ID.
            MOVE ALL "０１２３４５６７８９" TO G-09.
            MOVE FUNCTION BYTE-LENGTH(G-09) TO W-L.
            IF G-09 = ALL "０１２３４５６７８９"
               AND W-L = 32766
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"  W-L
            END-IF.
      *
      *      MOVE "P-050-02"             TO CASE-ID.
      *      MOVE ALL "０１２３４５６７８９" TO GE-09.
      *      IF GE-09(1:16382) = ALL "０１２３４５６７８９" AND
      *         GE-09(16383:1) = "／"
      *         AND FUNCTION BYTE-LENGTH(GE-09) = 32766
      *                                  DISPLAY CASE-ID "OK"
      *         ELSE                     DISPLAY CASE-ID "NG"
      *      END-IF.
      *
      *
       P-051.
      *  ケース5.限界系（データサイズ）
      *
            MOVE "P-051-01"             TO CASE-ID.
            MOVE ALL "０１２３４５６７８９" TO G-99.
            MOVE FUNCTION BYTE-LENGTH(G-99) TO W-L.
            IF G-99 = ALL "０１２３４５６７８９"
               AND W-L = 32768
                                        DISPLAY CASE-ID "OK"
               ELSE                     DISPLAY CASE-ID "NG"  W-L
            END-IF.
      *
      *      MOVE "P-051-02"             TO CASE-ID.
      *      MOVE ALL "０１２３４５６７８９" TO GE-99.
      *      IF GE-09(1:16383) = ALL "０１２３４５６７８９" AND
      *         GE-09(16384:1) = "／"
      *         AND FUNCTION BYTE-LENGTH(GE-99) = 32768
      *                                  DISPLAY CASE-ID "OK"
      *         ELSE                     DISPLAY CASE-ID "NG"
      *      END-IF.
      *
            DISPLAY "TEST END   (QA-24)".
            *>ACCEPT OMIT-WK.
      *
            GOBACK
            .

