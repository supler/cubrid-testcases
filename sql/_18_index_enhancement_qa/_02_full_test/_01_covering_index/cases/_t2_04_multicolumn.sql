--+ holdcas on;
set system parameters 'dont_reuse_heap_file=yes';
create table t1(col1 TIMESTAMP,col2 TIMESTAMP,col3 TIMESTAMP,col4 TIMESTAMP,col5 TIMESTAMP,col6 TIMESTAMP,col7 TIMESTAMP,col8 TIMESTAMP,col9 TIMESTAMP,col10 TIMESTAMP,col11 TIMESTAMP,col12 TIMESTAMP,col13 TIMESTAMP,col14 TIMESTAMP,col15 TIMESTAMP,col16 TIMESTAMP,col17 TIMESTAMP,col18 TIMESTAMP,col19 TIMESTAMP,col20 TIMESTAMP,col21 TIMESTAMP,col22 TIMESTAMP,col23 TIMESTAMP,col24 TIMESTAMP,col25 TIMESTAMP,col26 TIMESTAMP,col27 TIMESTAMP,col28 TIMESTAMP,col29 TIMESTAMP,col30 TIMESTAMP,col31 TIMESTAMP,col32 TIMESTAMP,col33 TIMESTAMP,col34 TIMESTAMP,col35 TIMESTAMP,col36 TIMESTAMP,col37 TIMESTAMP,col38 TIMESTAMP,col39 TIMESTAMP,col40 TIMESTAMP,col41 TIMESTAMP,col42 TIMESTAMP,col43 TIMESTAMP,col44 TIMESTAMP,col45 TIMESTAMP,col46 TIMESTAMP,col47 TIMESTAMP,col48 TIMESTAMP,col49 TIMESTAMP,col50 TIMESTAMP,col51 TIMESTAMP,col52 TIMESTAMP,col53 TIMESTAMP,col54 TIMESTAMP,col55 TIMESTAMP,col56 TIMESTAMP,col57 TIMESTAMP,col58 TIMESTAMP,col59 TIMESTAMP,col60 TIMESTAMP,col61 TIMESTAMP,col62 TIMESTAMP,col63 TIMESTAMP,col64 TIMESTAMP,col65 TIMESTAMP,col66 TIMESTAMP,col67 TIMESTAMP,col68 TIMESTAMP,col69 TIMESTAMP,col70 TIMESTAMP,col71 TIMESTAMP,col72 TIMESTAMP,col73 TIMESTAMP,col74 TIMESTAMP,col75 TIMESTAMP,col76 TIMESTAMP,col77 TIMESTAMP,col78 TIMESTAMP,col79 TIMESTAMP,col80 TIMESTAMP,col81 TIMESTAMP,col82 TIMESTAMP,col83 TIMESTAMP,col84 TIMESTAMP,col85 TIMESTAMP,col86 TIMESTAMP,col87 TIMESTAMP,col88 TIMESTAMP,col89 TIMESTAMP,col90 TIMESTAMP,col91 TIMESTAMP,col92 TIMESTAMP,col93 TIMESTAMP,col94 TIMESTAMP,col95 TIMESTAMP,col96 TIMESTAMP,col97 TIMESTAMP,col98 TIMESTAMP,col99 TIMESTAMP,col100 TIMESTAMP,col101 TIMESTAMP,col102 TIMESTAMP,col103 TIMESTAMP,col104 TIMESTAMP,col105 TIMESTAMP,col106 TIMESTAMP,col107 TIMESTAMP,col108 TIMESTAMP,col109 TIMESTAMP,col110 TIMESTAMP,col111 TIMESTAMP,col112 TIMESTAMP,col113 TIMESTAMP,col114 TIMESTAMP,col115 TIMESTAMP,col116 TIMESTAMP,col117 TIMESTAMP,col118 TIMESTAMP,col119 TIMESTAMP,col120 TIMESTAMP,col121 TIMESTAMP,col122 TIMESTAMP,col123 TIMESTAMP,col124 TIMESTAMP,col125 TIMESTAMP,col126 TIMESTAMP,col127 TIMESTAMP,col128 TIMESTAMP,col129 TIMESTAMP,col130 TIMESTAMP,col131 TIMESTAMP,col132 TIMESTAMP,col133 TIMESTAMP,col134 TIMESTAMP,col135 TIMESTAMP,col136 TIMESTAMP,col137 TIMESTAMP,col138 TIMESTAMP,col139 TIMESTAMP,col140 TIMESTAMP,col141 TIMESTAMP,col142 TIMESTAMP,col143 TIMESTAMP,col144 TIMESTAMP,col145 TIMESTAMP,col146 TIMESTAMP,col147 TIMESTAMP,col148 TIMESTAMP,col149 TIMESTAMP,col150 TIMESTAMP,col151 TIMESTAMP,col152 TIMESTAMP,col153 TIMESTAMP,col154 TIMESTAMP,col155 TIMESTAMP,col156 TIMESTAMP,col157 TIMESTAMP,col158 TIMESTAMP,col159 TIMESTAMP,col160 TIMESTAMP,col161 TIMESTAMP,col162 TIMESTAMP,col163 TIMESTAMP,col164 TIMESTAMP,col165 TIMESTAMP,col166 TIMESTAMP,col167 TIMESTAMP,col168 TIMESTAMP,col169 TIMESTAMP,col170 TIMESTAMP,col171 TIMESTAMP,col172 TIMESTAMP,col173 TIMESTAMP,col174 TIMESTAMP,col175 TIMESTAMP,col176 TIMESTAMP,col177 TIMESTAMP,col178 TIMESTAMP,col179 TIMESTAMP,col180 TIMESTAMP,col181 TIMESTAMP,col182 TIMESTAMP,col183 TIMESTAMP,col184 TIMESTAMP,col185 TIMESTAMP,col186 TIMESTAMP,col187 TIMESTAMP,col188 TIMESTAMP,col189 TIMESTAMP,col190 TIMESTAMP,col191 TIMESTAMP,col192 TIMESTAMP,col193 TIMESTAMP,col194 TIMESTAMP,col195 TIMESTAMP,col196 TIMESTAMP,col197 TIMESTAMP,col198 TIMESTAMP,col199 TIMESTAMP,col200 TIMESTAMP);
create index i_t1_covering_index on t1(col1 ,col2 ,col3 ,col4 ,col5 ,col6 ,col7 ,col8 ,col9 ,col10 ,col11 ,col12 ,col13 ,col14 ,col15 ,col16 ,col17 ,col18 ,col19 ,col20 ,col21 ,col22 ,col23 ,col24 ,col25 ,col26 ,col27 ,col28 ,col29 ,col30 ,col31 ,col32 ,col33 ,col34 ,col35 ,col36 ,col37 ,col38 ,col39 ,col40 ,col41 ,col42 ,col43 ,col44 ,col45 ,col46 ,col47 ,col48 ,col49 ,col50 ,col51 ,col52 ,col53 ,col54 ,col55 ,col56 ,col57 ,col58 ,col59 ,col60 ,col61 ,col62 ,col63 ,col64 ,col65 ,col66 ,col67 ,col68 ,col69 ,col70 ,col71 ,col72 ,col73 ,col74 ,col75 ,col76 ,col77 ,col78 ,col79 ,col80 ,col81 ,col82 ,col83 ,col84 ,col85 ,col86 ,col87 ,col88 ,col89 ,col90 ,col91 ,col92 ,col93 ,col94 ,col95 ,col96 ,col97 ,col98 ,col99 ,col100 ,col101 ,col102 ,col103 ,col104 ,col105 ,col106 ,col107 ,col108 ,col109 ,col110 ,col111 ,col112 ,col113 ,col114 ,col115 ,col116 ,col117 ,col118 ,col119 ,col120 ,col121 ,col122 ,col123 ,col124 ,col125 ,col126 ,col127 ,col128 ,col129 ,col130 ,col131 ,col132 ,col133 ,col134 ,col135 ,col136 ,col137 ,col138 ,col139 ,col140 ,col141 ,col142 ,col143 ,col144 ,col145 ,col146 ,col147 ,col148 ,col149 ,col150 ,col151 ,col152 ,col153 ,col154 ,col155 ,col156 ,col157 ,col158 ,col159 ,col160 ,col161 ,col162 ,col163 ,col164 ,col165 ,col166 ,col167 ,col168 ,col169 ,col170 ,col171 ,col172 ,col173 ,col174 ,col175 ,col176 ,col177 ,col178 ,col179 ,col180 ,col181 ,col182 ,col183 ,col184 ,col185 ,col186 ,col187 ,col188 ,col189 ,col190 ,col191 ,col192 ,col193 ,col194 ,col195 ,col196 ,col197 ,col198 ,col199 ,col200);
--TEST: should use index i_t1_covering_index
select /*+ RECOMPILE */ col1 ,col2 ,col3 ,col4 ,col5 ,col6 ,col7 ,col8 ,col9 ,col10 ,col11 ,col12 ,col13 ,col14 ,col15 ,col16 ,col17 ,col18 ,col19 ,col20 ,col21 ,col22 ,col23 ,col24 ,col25 ,col26 ,col27 ,col28 ,col29 ,col30 ,col31 ,col32 ,col33 ,col34 ,col35 ,col36 ,col37 ,col38 ,col39 ,col40 ,col41 ,col42 ,col43 ,col44 ,col45 ,col46 ,col47 ,col48 ,col49 ,col50 ,col51 ,col52 ,col53 ,col54 ,col55 ,col56 ,col57 ,col58 ,col59 ,col60 ,col61 ,col62 ,col63 ,col64 ,col65 ,col66 ,col67 ,col68 ,col69 ,col70 ,col71 ,col72 ,col73 ,col74 ,col75 ,col76 ,col77 ,col78 ,col79 ,col80 ,col81 ,col82 ,col83 ,col84 ,col85 ,col86 ,col87 ,col88 ,col89 ,col90 ,col91 ,col92 ,col93 ,col94 ,col95 ,col96 ,col97 ,col98 ,col99 ,col100 ,col101 ,col102 ,col103 ,col104 ,col105 ,col106 ,col107 ,col108 ,col109 ,col110 ,col111 ,col112 ,col113 ,col114 ,col115 ,col116 ,col117 ,col118 ,col119 ,col120 ,col121 ,col122 ,col123 ,col124 ,col125 ,col126 ,col127 ,col128 ,col129 ,col130 ,col131 ,col132 ,col133 ,col134 ,col135 ,col136 ,col137 ,col138 ,col139 ,col140 ,col141 ,col142 ,col143 ,col144 ,col145 ,col146 ,col147 ,col148 ,col149 ,col150 ,col151 ,col152 ,col153 ,col154 ,col155 ,col156 ,col157 ,col158 ,col159 ,col160 ,col161 ,col162 ,col163 ,col164 ,col165 ,col166 ,col167 ,col168 ,col169 ,col170 ,col171 ,col172 ,col173 ,col174 ,col175 ,col176 ,col177 ,col178 ,col179 ,col180 ,col181 ,col182 ,col183 ,col184 ,col185 ,col186 ,col187 ,col188 ,col189 ,col190 ,col191 ,col192 ,col193 ,col194 ,col195 ,col196 ,col197 ,col198 ,col199 ,col200 from t1 where col1>TIMESTAMP'2011-01-28 18:27:00';

create index i_t1_covering_index2 on t1(col1 ,col2 ,col3 ,col4 ,col5 ,col6 ,col7 ,col8 ,col9 ,col10 ,col11 ,col12 ,col13 ,col14 ,col15 ,col16 ,col17 ,col18 ,col19 ,col20 ,col21 ,col22 ,col23 ,col24 ,col25 ,col26 ,col27 ,col28 ,col29 ,col30 ,col31 ,col32 ,col33 ,col34 ,col35 ,col36 ,col37 ,col38 ,col39 ,col40 ,col41 ,col42 ,col43 ,col44 ,col45 ,col46 ,col47 ,col48 ,col49 ,col50 ,col51 ,col52 ,col53 ,col54 ,col55 ,col56 ,col57 ,col58 ,col59 ,col60 ,col61 ,col62 ,col63 ,col64 ,col65 ,col66 ,col67 ,col68 ,col69 ,col70 ,col71 ,col72 ,col73 ,col74 ,col75 ,col76 ,col77 ,col78 ,col79 ,col80 ,col81 ,col82 ,col83 ,col84 ,col85 ,col86 ,col87 ,col88 ,col89 ,col90 ,col91 ,col92 ,col93 ,col94 ,col95 ,col96 ,col97 ,col98 ,col99 ,col100);
select /*+ RECOMPILE */ col1 ,col2 ,col3 ,col4 ,col5 ,col6 ,col7 ,col8 ,col9 ,col10 ,col11 ,col12 ,col13 ,col14 ,col15 ,col16 ,col17 ,col18 ,col19 ,col20 ,col21 ,col22 ,col23 ,col24 ,col25 ,col26 ,col27 ,col28 ,col29 ,col30 ,col31 ,col32 ,col33 ,col34 ,col35 ,col36 ,col37 ,col38 ,col39 ,col40 ,col41 ,col42 ,col43 ,col44 ,col45 ,col46 ,col47 ,col48 ,col49 ,col50 ,col51 ,col52 ,col53 ,col54 ,col55 ,col56 ,col57 ,col58 ,col59 ,col60 ,col61 ,col62 ,col63 ,col64 ,col65 ,col66 ,col67 ,col68 ,col69 ,col70 ,col71 ,col72 ,col73 ,col74 ,col75 ,col76 ,col77 ,col78 ,col79 ,col80 ,col81 ,col82 ,col83 ,col84 ,col85 ,col86 ,col87 ,col88 ,col89 ,col90 ,col91 ,col92 ,col93 ,col94 ,col95 ,col96 ,col97 ,col98 ,col99 ,col100 from t1 where col1>TIMESTAMP'2011-01-28 18:27:00';
drop table t1;
set system parameters 'dont_reuse_heap_file=no';
commit;
--+ holdcas off;
