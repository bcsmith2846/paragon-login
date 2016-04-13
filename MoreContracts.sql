INSERT INTO paragon.BILLING_TYPES (NAME) VALUES ('Once');

ALTER TABLE paragon.CONTRACTS ADD (NAME VARCHAR2(255));

INSERT INTO paragon.CONTRACTS (
BT_ID,
C_ID,
END_DATE,
RATE,
START_DATE,
NAME) VALUES (
5,
1,
TO_DATE('04-12-2017','mm-dd-yyyy'),
127,
TO_DATE('04-12-2016','mm-dd-yyyy'),
'License'
);

INSERT INTO paragon.CONTRACTS (
BT_ID,
C_ID,
END_DATE,
RATE,
START_DATE,
NAME) VALUES (
5,
2,
TO_DATE('04-12-2017','mm-dd-yyyy'),
129,
TO_DATE('04-12-2016','mm-dd-yyyy'),
'License'
);

INSERT INTO paragon.CONTRACTS (
BT_ID,
C_ID,
END_DATE,
RATE,
START_DATE,
NAME) VALUES (
5,
3,
TO_DATE('04-12-2017','mm-dd-yyyy'),
132,
TO_DATE('04-12-2016','mm-dd-yyyy'),
'License'
);

INSERT INTO paragon.CONTRACTS (
BT_ID,
C_ID,
END_DATE,
RATE,
START_DATE,
E_ID) VALUES (
0,
3,
TO_DATE('04-12-2017','mm-dd-yyyy'),
132,
TO_DATE('04-12-2016','mm-dd-yyyy'),
2
);

commit;

