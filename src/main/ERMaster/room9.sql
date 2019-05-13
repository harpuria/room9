
/* Drop Tables */

DROP TABLE R9_MEMBER CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE R9_MEMBER
(
	MNO number NOT NULL,
	EMAILID varchar2(100) NOT NULL UNIQUE,
	PWD varchar2(20) NOT NULL,
	NAME nvarchar2(20) NOT NULL,
	PHONENUMBER nvarchar2(20) NOT NULL,
	KAKAOID number,
	PRIMARY KEY (MNO)
);


/* Sequences */
CREATE SEQUENCE SEQ_R9_MEMBER NOCACHE NOCYCLE;


