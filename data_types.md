## MySQL Data Types
All the popular database servers have the capacity to store the same types of data, such as strings, dates, and numbers. Where they typically differ is in the specialty data types, such as XML and JSON documents or spatial data.

### Character Data
Character data can be stored as either fixed-length or variable-length strings; the difference is that fixed-length strings are right-padded with spaces and always consume the same number of bytes, and variable-length strings are not right-padded with spaces and don’t always consume the same number of bytes.  

When defining a character column, you must specify the maximum size of any string to be stored in the column. For example, if you want to store strings up to 20 characters in length, you could use either of the following definitions:
```sql
char(20) /* fixed-length */
varchar(20) /* variable-length */
```
The maximum length for `char` columns is currently 255 bytes, whereas `varchar` columns can be up to 65,535 bytes. If you need to store longer strings (such as emails, XML documents, etc.), then you will want to use one of the text types (mediumtext and longtext).  

You should use the `char` type when all strings to be stored in the column are of the same length, such as state abbreviations, and the `varchar` type when strings to be stored in the column are of varying lengths. Both `char` and `varchar` are used in a similar fashion in all the major database servers.

#### Character sets
For languages that use the Latin alphabet, such as English, there is a sufficiently small number of characters such that only a single byte is needed to store each character.  
Other languages, such as Japanese and Korean, contain large numbers of characters, thus requiring multiple bytes of storage for each character. Such character sets are
therefore called multibyte character sets.  
MySQL can store data using various character sets, both single- and multibyte. To view the supported character sets in your server, you can use the show command, as
shown in the following example:
```sql
SHOW CHARACTER SET;
```
|Charset |Description                    |Default collation  |Maxlen|
|:-------|:------------------------------|:------------------|:-----|
|armscii8|ARMSCII-8 Armenian             |armscii8_general_ci|1     |
|ascii   |US ASCII                       |ascii_general_ci   |1     |
|big5    |Big5 Traditional Chinese       |big5_chinese_ci    |2     |
|binary  |Binary pseudo charset          |binary             |1     |
|cp1250  |Windows Central European       |cp1250_general_ci  |1     |
|cp1251  |Windows Cyrillic               |cp1251_general_ci  |1     |
|cp1256  |Windows Arabic                 |cp1256_general_ci  |1     |
|cp1257  |Windows Baltic                 |cp1257_general_ci  |1     |
|cp850   |DOS West European              |cp850_general_ci   |1     |
|cp852   |DOS Central European           |cp852_general_ci   |1     |
|cp866   |DOS Russian                    |cp866_general_ci   |1     |
|cp932   |SJIS for Windows Japanese      |cp932_japanese_ci  |2     |
|dec8    |DEC West European              |dec8_swedish_ci    |1     |
|eucjpms |UJIS for Windows Japanese      |eucjpms_japanese_ci|3     |
|euckr   |EUC-KR Korean                  |euckr_korean_ci    |2     |
|gb18030 |China National Standard GB18030|gb18030_chinese_ci |4     |
|gb2312  |GB2312 Simplified Chinese      |gb2312_chinese_ci  |2     |
|gbk     |GBK Simplified Chinese         |gbk_chinese_ci     |2     |
|geostd8 |GEOSTD8 Georgian               |geostd8_general_ci |1     |
|greek   |ISO 8859-7 Greek               |greek_general_ci   |1     |
|hebrew  |ISO 8859-8 Hebrew              |hebrew_general_ci  |1     |
|hp8     |HP West European               |hp8_english_ci     |1     |
|keybcs2 |DOS Kamenicky Czech-Slovak     |keybcs2_general_ci |1     |
|koi8r   |KOI8-R Relcom Russian          |koi8r_general_ci   |1     |
|koi8u   |KOI8-U Ukrainian               |koi8u_general_ci   |1     |
|latin1  |cp1252 West European           |latin1_swedish_ci  |1     |
|latin2  |ISO 8859-2 Central European    |latin2_general_ci  |1     |
|latin5  |ISO 8859-9 Turkish             |latin5_turkish_ci  |1     |
|latin7  |ISO 8859-13 Baltic             |latin7_general_ci  |1     |
|macce   |Mac Central European           |macce_general_ci   |1     |
|macroman|Mac West European              |macroman_general_ci|1     |
|sjis    |Shift-JIS Japanese             |sjis_japanese_ci   |2     |
|swe7    |7bit Swedish                   |swe7_swedish_ci    |1     |
|tis620  |TIS620 Thai                    |tis620_thai_ci     |1     |
|ucs2    |UCS-2 Unicode                  |ucs2_general_ci    |2     |
|ujis    |EUC-JP Japanese                |ujis_japanese_ci   |3     |
|utf16   |UTF-16 Unicode                 |utf16_general_ci   |4     |
|utf16le |UTF-16LE Unicode               |utf16le_general_ci |4     |
|utf32   |UTF-32 Unicode                 |utf32_general_ci   |4     |
|utf8mb3 |UTF-8 Unicode                  |utf8mb3_general_ci |3     |
|utf8mb4 |UTF-8 Unicode                  |utf8mb4_0900_ai_ci |4     |
