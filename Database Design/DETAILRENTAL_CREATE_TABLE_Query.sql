CREATE TABLE DETAILRENTAL (
RENT_NUM                        INT              NOT NULL,
VID_NUM                         INT              NOT NULL,
DETAIL_FEE                      NUMERIC (4,2)    DEFAULT NULL,
DETAIL_DUEDATE                  DATE             NOT NULL,
DETAIL_RETURNDATE               DATE             DEFAULT NULL,
DETAIL_DAILYLATEFEE             NUMERIC(4,2)     DEFAULT NULL,
CONSTRAINT DETLRENT_PK PRIMARY KEY (RENT_NUM,VID_NUM),
CONSTRAINT DETAILRENTAL_RENT_NUM_FK FOREIGN KEY(RENT_NUM) REFERENCES RENTAL(RENT_NUM),
CONSTRAINT DETAILRENTAL_VID_NUM_FK FOREIGN KEY(VID_NUM) REFERENCES VIDEO(VID_NUM)
 );


