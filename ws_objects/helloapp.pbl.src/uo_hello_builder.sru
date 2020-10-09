$PBExportHeader$uo_hello_builder.sru
forward
global type uo_hello_builder from nonvisualobject
end type
end forward

global type uo_hello_builder from nonvisualobject autoinstantiate
end type

type variables
private:
string sender;
string receiver;
end variables
forward prototypes
public subroutine sender (string as_sender)
public function string sender ()
public subroutine receiver (string as_reciver)
public function string receiver ()
public function string hello ()
end prototypes

public subroutine sender (string as_sender);sender = as_sender
end subroutine

public function string sender ();return sender
end function

public subroutine receiver (string as_reciver);receiver = as_reciver
end subroutine

public function string receiver ();return receiver
end function

public function string hello ();return this.sender()+' say Hello to'+ this.receiver()
end function

on uo_hello_builder.create
call super::create
TriggerEvent( this, "constructor" )
end on

on uo_hello_builder.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

