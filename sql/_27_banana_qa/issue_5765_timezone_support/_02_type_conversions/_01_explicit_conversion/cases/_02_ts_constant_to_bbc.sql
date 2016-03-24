--cast TIMESTAMP(L)TZ constant values to bit/lob data types


set timezone 'Asia/Seoul';

--test: cast ts constant values to bit/blob/clob types
select cast(timestamp'2019-01-02 12:00:01' as bit(20));
select cast(timestamp'2019-01-02 12:00:01' as bit varying);
select blob_to_bit(cast(timestamp'2019-01-02 12:00:01' as blob));
select clob_to_char(cast(timestamp'2019-01-02 12:00:01' as clob));

--test: cast ts constant values with time offset to bit/blob/clob types
select cast(timestampltz'2019-01-02 12:00:01 +8:00' as bit(20));
select cast(timestampltz'2019-01-02 12:00:01 +8:00' as bit varying);
select blob_to_bit(cast(timestampltz'2019-01-02 12:00:01 +8:00' as blob));
select clob_to_char(cast(timestampltz'2019-01-02 12:00:01 +8:00' as clob));

--test: cast ts constant values with geographic time zone to bit/blob/clob types
select cast(timestamptz'2019-01-02 12:00:01 America/New_York' as bit(20));
select cast(timestamptz'2019-01-02 12:00:01 America/New_York' as bit varying);
select blob_to_bit(cast(timestamptz'2019-01-02 12:00:01 America/New_York' as blob));
select clob_to_char(cast(timestamptz'2019-01-02 12:00:01 America/New_York' as clob));


set timezone 'Asia/Seoul';
