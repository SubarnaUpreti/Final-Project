/*form validation*/
function validateForm(){ 
  var name= document.getElementById("name").value;
  var email= document.getElementById("email").value;
  var phone= document.getElementById("phone").value;
  var message= document.getElementById("message").value;

  error.style.padding ="10px";

  if (name.length <5) {
    document.getElementById("error").innerHTML="Please Enter Valid Name";
    document.contact.name.focus();
    return false;
}
if (email.indexOf("@") == -1 || email.length < 6) {
    document.getElementById("error").innerHTML="Please Enter Valid Email";
    document.contact.email.focus();
    return false;
}
if (isNaN(phone) || phone.length != 10) {
    document.getElementById("error").innerHTML="Please Enter valid Phone Number";
    document.contact.phone.focus();
    return false;
}
if (message.length <5) {
    document.getElementById("error").innerHTML="Please Message with atleast 5 characters";
    document.contact.message.focus();
    return false;
}
alert("Form Submitted Successfully")
return true;
}


