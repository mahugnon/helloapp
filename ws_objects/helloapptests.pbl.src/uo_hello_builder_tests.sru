$PBExportHeader$uo_hello_builder_tests.sru
forward
global type uo_hello_builder_tests from testcase
end type
end forward

global type uo_hello_builder_tests from testcase
event test_empty_say_hello ( )
end type
global uo_hello_builder_tests uo_hello_builder_tests

event test_empty_say_hello();uo_hello_builder builder
this.assertEqual(' say Hello to',builder.hello()) 
end event

on uo_hello_builder_tests.create
call super::create
end on

on uo_hello_builder_tests.destroy
call super::destroy
end on

