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

If the value in the fourth column, maxlen, is greater than 1, then the character set is a multibyte character set.  
In prior versions of the MySQL server, the latin1 character set was automatically chosen as the default character set, but version 8 defaults to utf8mb4. However, you
may choose to use a different character set for each character column in your  database, and you can even store different character sets within the same table.

### Text Data
If you need to store data that might exceed the 64 KB limit for varchar columns, you will need to use one of the text types.
| Text type | Maximum no. of bytes |
|:----------|:---------------------|
|tinytext   | 255                  |
|text       | 65,535               |
|mediumtext | 16,777,215           |
|longtext   | 4,294,967,295        |  

When choosing to use one of the text types, you should be aware of the following:
- If the data being loaded into a text column exceeds the maximum size for that type, the data will be truncated.
- Trailing spaces will not be removed when data is loaded into the column.
- When using text columns for sorting or grouping, only the first 1,024 bytes are
used, although this limit may be increased if necessary.
- The different text types are unique to MySQL. SQL Server has a single text type for large character data, whereas DB2 and Oracle use a data type called clob, for
Character Large Object.
- Now that MySQL allows up to 65,535 bytes for varchar columns (it was limited to 255 bytes in version 4), there isn’t any particular need to use the tinytext or text type.

If you are creating a column for free-form data entry, such as a notes column to hold data about customer interactions with your company’s customer service department, then varchar will probably be adequate. If you are storing documents, however, you should choose either the mediumtext or longtext type.

### Numeric Data 
There are several different numeric data types that reflect the various ways in which numbers are used, as illustrated here:  
- *A column indicating whether a customer order has been shipped.*
  - This type of column, referred to as a **Boolean**, would contain a 0 to indicate false and a 1 to indicate true.
- *A system-generated primary key for a transaction table.*
  - This data would generally start at 1 and increase in increments of one up to a potentially very large number.
- *An item number for a customer’s electronic shopping basket.*
  - The values for this type of column would be positive whole numbers between 1 and, perhaps, 200 (for shopaholics).
- *Positional data for a circuit board drill machine.*
  - High-precision scientific or manufacturing data often requires accuracy to eight decimal points.  

To handle these types of data there are several numeric data types. The most commonly used numeric types are those used to store whole numbers, or integers.  
When specifying one of these types, you may also specify that the data is unsigned, which tells the server that all data stored in the column will be greater than or equal to zero.

#### MySQL Integer Types
| Type      | Signed range                    | Unsigned range     |
|:----------|:--------------------------------|:-------------------|
| tinyint   | −128 to 127                     | 0 to 255           |
| smallint  | −32,768 to 32,767               | 0 to 65,535        |
| mediumint | −8,388,608 to 8,388,607         | 0 to 16,777,215    |
| int       | −2,147,483,648 to 2,147,483,647 | 0 to 4,294,967,295 |
| bigint    | −2^63 to 2^63 - 1               | 0 to 2^64 - 1      |

When you create a column using one of the integer types, MySQL will allocate an appropriate amount of space to store the data, which ranges from one byte for a tinyint to eight bytes for a bigint. Therefore, you should try to choose a type that will be large enough to hold the biggest number you can envision being stored in the column without needlessly wasting storage space.  

For floating-point numbers (such as 3.1415927), you may choose from the numeric types shown below:
#### MySQL floating-point types
| Type  | Numeric range |
|:------|:--------------|
| float( p , s )  | −3.402823466E+38 to −1.175494351E-38 and 1.175494351E-38 to 3.402823466E+38 |
| double( p , s ) | −1.7976931348623157E+308 to −2.2250738585072014E-308 and 2.2250738585072014E-308 to 1.7976931348623157E+308 |

When using a floating-point type, you can specify a precision (the total number of allowable digits both to the left and to the right of the decimal point) and a scale (the number of allowable digits to the right of the decimal point), but they are not required.  
These values are represented in the above table as p and s. If you specify a precision and scale for your floating-point column, remember that the data stored in the column will be rounded if the number of digits exceeds the scale and/or precision of the column. For example, a column defined as float(4,2) will store a total of four digits, two to the left of the decimal and two to the right of the decimal. Therefore, such a column would handle the numbers 27.44 and 8.19 just fine, but the number 17.8675 would be rounded to 17.87, and attempting to store the number 178.375 in your float(4,2) column would generate an error.  
Like the integer types, floating-point columns can be defined as unsigned, but this designation only prevents negative numbers from being stored in the column rather than altering the range of data that may be stored in the column.  

### Temporal Data
Along with strings and numbers, you will almost certainly be working with information about dates and/or times. This type of data is referred to as temporal, and some examples of temporal data in a database include:
- The future date that a particular event is expected to happen, such as shipping a customer’s order
- The date that a customer’s order was shipped
- The date and time that a user modified a particular row in a table
- An employee’s birth date
- The year corresponding to a row in a `yearly_sales` fact table in a data warehouse
- The elapsed time needed to complete a wiring harness on an automobile assembly
line.   

#### MySQL temporal types
| Type | Default format | Allowable values |
|:-----|:---------------|:-----------------|
| date | YYYY-MM-DD | 1000-01-01 to 9999-12-31 |
| datetime | YYYY-MM-DD HH:MI:SS | 1000-01-01 00:00:00.000000 to 9999-12-31 23:59:59.999999 |
| timestamp | YYYY-MM-DD HH:MI:SS | 1970-01-01 00:00:00.000000 to 2038-01-18 22:14:07.999999 |
| year | YYYY | 1901 to 2155 |
| time | HHH:MI:SS | −838:59:59.000000 to 838:59:59.000000 |

The purpose of a format string is to show how the data will be represented when retrieved, along with how a date string should be constructed when inserting or updating a temporal column.  
The `datetime`, `timestamp`, and `time` types also allow fractional seconds of up to 6 decimal places (microseconds). When defining columns using one of these data types, you may supply a value from 0 to 6; for example, specifying `datetime(2)` would allow your time values to include hundredths of a second.
