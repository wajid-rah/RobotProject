*** Settings ***
Library     DatabaseLibrary

Suite Setup     Connect To Database     dbapiModuleName=pymysql     dbName=dbfree_db    dbUsername=dbfree_db
...     dbPassword=12345678     dbHost=db4free.net  dbPort=3306

Suite Teardown   Disconnect From Database


*** Test Cases ***
TC1
    Table Must Exist    Products
    ${count}    Row Count    select * from Products
    Log To Console    ${count}

TC2
    Row Count Is Equal To X    select * from Products where product_id=10    1

TC3
    Execute Sql String    insert into Products(product_id,productname,description) values (2666,'Wajid','another description')
    Row Count Is Equal To X    Select * from Products where product_id=2666    1
TC4
    @{result}    Query   Select * from Products
    Log To Console    ${result}[0]
    
TC5
    Execute Sql String         Update Products Set productname='Sajid' where product_id=2666
    @{output}    Query    Select * from Products where product_id=2666
    Log To Console    ${output}

TC6 
    @{output}      Query    Select * from Products where product_id=2666
    Log To Console    ${output}[0][1]