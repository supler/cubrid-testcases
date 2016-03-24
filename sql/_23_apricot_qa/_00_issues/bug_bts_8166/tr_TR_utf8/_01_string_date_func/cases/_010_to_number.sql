-- string - date function with 'use_locale_number_format' system parameter
--+ holdcas on;
set names utf8;
set system parameters 'intl_number_lang = tr_TR';

select to_number ('123456.789123');

select to_number ('123.456,789','999.999,999');

select to_number ('123,456.789','999,999.999');

set system parameters 'intl_number_lang = en_US';
set names iso88591;
commit;
--+ holdcas off;
