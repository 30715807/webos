CREATE TABLE TCC_TERMINATOR (XID varchar(32) NOT NULL, SEQ int NOT NULL, SN varchar(48), TSN varchar(48), DOTRY char(1), DOCONFIRM char(1), CANNOTCANCEL char(1), STATUS int, CLAZZ varchar(128), METHOD varchar(48), TYPES varchar(512), ARGS blob, ARGSMD5 varchar(128), CREATETM varchar(24), PRIMARY KEY (XID, SEQ)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE TCC_TRANSACTION (XID varchar(32) NOT NULL, GNAME varchar(24), SN varchar(48), STATUS int, APP varchar(12), JVM varchar(8), EXSEQ int, EXSN varchar(48), EX varchar(512), PROXY varchar(128), CREATETM varchar(24), LASTSTATUSTM char(24), ARGS blob, ARGSMD5 varchar(128), PRIMARY KEY (XID)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
CREATE TABLE TCC_TRANSLOG (SN varchar(128) NOT NULL, STATUS int, CLAZZ varchar(128), METHOD varchar(64), TYPES varchar(512), ARGS blob, ARGSMD5 varchar(128), TRYTM varchar(24), CONFIRMTM varchar(24), CANCELTM varchar(24), PRIMARY KEY (SN)) ENGINE=InnoDB DEFAULT CHARSET=utf8;
