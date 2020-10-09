$PBExportHeader$helloapp.sra
$PBExportComments$Generated Application Object
forward
global type helloapp from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global type helloapp from application
string appname = "helloapp"
end type
global helloapp helloapp

on helloapp.create
appname = "helloapp"
message = create message
sqlca = create transaction
sqlda = create dynamicdescriptionarea
sqlsa = create dynamicstagingarea
error = create error
end on

on helloapp.destroy
destroy( sqlca )
destroy( sqlda )
destroy( sqlsa )
destroy( error )
destroy( message )
end on

