#Criação da tabela externa de Endereco#


CREATE EXTERNAL TABLE IF NOT EXISTS desafio.endereco ( 
        Address_Number string,
        City string,
        Country string,
        Customer_Address_1 string,
        Customer_Address_2 string,
        Customer_Address_3 string,
        Customer_Address_4 string,
        State string,
        Zip_Code string,
    )
COMMENT 'Tabela de Endereco'
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
location '/datalake/raw/ENDERECO/'
TBLPROPERTIES ("skip.header.line.count"="1");