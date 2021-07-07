      ******************************************************************
      *    �e�X�g�P�[�X�FQA-33
      *    �v���O�������F���{�ꉻ�e�X�g QA
      ******************************************************************
       IDENTIFICATION        DIVISION.
      ******************************************************************
       PROGRAM-ID.           QA-39.
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
       01  OMIT-WK            PIC X.
       01  CASE-ID            PIC X(30).
      *
       01  G-01               PIC N(10).
       01  X-01               PIC X(10).
      *
      *****************************************************
       PROCEDURE             DIVISION.
      ******************************************************************
       MAIN                  SECTION.
       P-010. 
            DISPLAY "QA-39 test start".
      *  INSPECT G-01 REPLACING CHARACTERS BY "�`".
      *
            MOVE "QA39-01"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            INSPECT G-01 REPLACING CHARACTERS BY "��".
            IF G-01 = ALL "��"   
                             DISPLAY CASE-ID "OK"
               ELSE          DISPLAY CASE-ID "NG:" G-01
            END-IF.
      *     
            MOVE "QA39-02"        TO CASE-ID.
            MOVE "��������������������" TO G-01.
            INSPECT G-01 REPLACING CHARACTERS BY "���P".
            IF G-01 = ALL "���P"
                              DISPLAY CASE-ID "NG1:" G-01
               ELSE           DISPLAY CASE-ID "NG2:" G-01
            END-IF.
      *     
            MOVE "QA39-03"        TO CASE-ID.
            MOVE "����������" TO X-01.
            INSPECT X-01 REPLACING CHARACTERS BY "*".
            IF X-01 = ALL "*"
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG:" X-01
            END-IF.
      *     
            MOVE "QA39-04"        TO CASE-ID.
            MOVE "����������" TO X-01.
            INSPECT X-01 REPLACING CHARACTERS BY "*1".
            IF X-01 = ALL "*1"
                              DISPLAY CASE-ID "NG1:" X-01
               ELSE           DISPLAY CASE-ID "NG2:" X-01
            END-IF.
      *     
            MOVE "QA39-05"        TO CASE-ID.
            MOVE "����������" TO X-01.
            INSPECT X-01 REPLACING ALL "�" BY "*".
            IF X-01 = "*���������"
                              DISPLAY CASE-ID "OK"
               ELSE           DISPLAY CASE-ID "NG:" X-01
            END-IF.
      *     
            MOVE "QA39-06"        TO CASE-ID.
            MOVE "����������" TO X-01.
            INSPECT X-01 REPLACING ALL "�" BY "*1".
            IF X-01 = "*1��������"
                              DISPLAY CASE-ID "NG1:" X-01
               ELSE           DISPLAY CASE-ID "NG2:" X-01
            END-IF.
      *
            DISPLAY "QA-39 test end".
            *>ACCEPT OMIT-WK.
            GOBACK
            .

