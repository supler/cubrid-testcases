-- TO_CHAR (number)
--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = ko_KR';

select to_char (123456.789123);

select to_char (123456.789123,'999999.999999');  

set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;

