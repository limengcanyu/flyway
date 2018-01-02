--
-- Copyright 2010-2018 Boxfuse GmbH
--
-- INTERNAL RELEASE. ALL RIGHTS RESERVED.
--
-- Must
-- be
-- exactly
-- 13 lines
-- to match
-- community
-- edition
-- license
-- length.
--

/* Single line comment */
CREATE TABLE test_user (
  name VARCHAR(25) NOT NULL,
  PRIMARY KEY(name)
);

/*
Multi-line
comment
*/
CREATE TRIGGER test_trig AFTER insert ON test_user
BEGIN
    UPDATE test_user SET name = CONCAT(name, ' triggered');
END;
/
COMMIT;