select months_between (datetimeltz'2001-10-11 10:11:12', datetimeltz'2001-05-11 10:11:12');

select months_between (datetimetz'2001-10-11 10:11:12 +02:00', datetimetz'2001-05-11 10:11:12 +03:00');

select months_between (timestampltz'2001-10-11 10:11:12', timestampltz'2001-05-11 10:11:12');

select months_between (timestamptz'2001-10-11 10:11:12 +02:00', timestamptz'2001-05-11 10:11:12 +03:00');


select months_between (timestampltz'2001-10-11 10:11:12', datetimeltz'2001-05-11 10:11:12');

select months_between (timestamptz'2001-10-11 10:11:12 +02:00', datetimetz'2001-05-11 10:11:12 +03:00');


select months_between (timestampltz'2001-10-11 10:11:12', timestamptz'2001-05-11 10:11:12');

select months_between (datetimeltz'2001-10-11 10:11:12 +02:00', datetimetz'2001-05-11 10:11:12 +03:00');