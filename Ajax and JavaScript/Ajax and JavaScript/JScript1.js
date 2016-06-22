function mouseOut()  //used for DHTML
{
    //we can just catch the html elements by this way
    document.getElementById("hText").innerHTML="This is a header";
    document.getElementById("btn").value="mouse out";
}
function mouseHover()  //used for DHTML
{
    document.getElementById("hText").innerHTML="Mouse Hover";
    document.getElementById("btn").value="mouse hover";
}

// it all supports basic c code
function executeScript()
{     
    document.writeln("JavaScript message.  ");
    var d=new Date();
    theDay=d.getDay();

    switch(theDay)
    {
        case 5:
            document.write("Finally Friday")
            break
        case 6:
            document.write("Super Saturday")
            break
        case 0:
            document.write("Sleepy Sunday")
            break
        default:
            document.write("I'm looking forward to this weekend!")
    }
    var x
    var mycars = new Array()
    mycars[0] = "Saab"
    mycars[1] = "Volvo"
    mycars[2] = "BMW"

    for (x in mycars)
    {
        document.write("<br />" + mycars[x])
    }
}
function showError()
{       // to handle error there is an onerror event. To see more go w3school
    try
    {
        addlert("There is an error in function");
    }
    catch(err)
    {
        txt="There was an error on this page.\n\n"
        txt+="Error description: " + err.description + "\n\n"
        txt+="Click OK to continue.\n\n"
        //alert(txt)
        if(!confirm(txt))
        {
            document.location.href="http://www.w3schools.com/"
        }
    }
}
function throwError()
{
    var x=prompt("Enter a number between 0 and 10:","")
    try
    { 
        if(x>10) 
        throw "Err1" 
        else if(x<0)
        throw "Err2"
    } 
    catch(er)
    {
        if(er=="Err1") 
        alert("Error! The value is too high")
        if(er == "Err2") 
        alert("Error! The value is too low") 
    }
}
//function OnloadMessage()
//{
//	alert("Message before loading the page");
//}
function alert_box()
{
	alert("This is in alert box \n with line breaks.");
}

function confirm_box()
{
	var r = confirm("Press a button");
	if(r==true)
		document.write("You pressed ok button");
	else
		document.write("You pressed cancel button");
}

function prompt_box()
{
	var name = prompt("Please enter your name","harry");
	if(name!=null && name!="")
		document.write("Your name is " + name);
}

function product()
{
	var a = prompt("Enter first number");
	var b = prompt("Enter second number");
	alert("The product of the two numbers is " + a * b);
}

function browser_information()
{
	document.write("<br /><br />The browser name is "+ navigator.appName + parseFloat(navigator.appVersion));
	document.write("<p>Browser: ")
    document.write(navigator.appName + "</p>")

    document.write("<p>Browserversion: ")
    document.write(navigator.appVersion + "</p>")

    document.write("<p>Code: ")
    document.write(navigator.appCodeName + "</p>")

    document.write("<p>Platform: ")
    document.write(navigator.platform + "</p>")

    document.write("<p>Cookies enabled: ")
    document.write(navigator.cookieEnabled + "</p>")

    document.write("<p>Browser's user agent header: ")
    document.write(navigator.userAgent + "</p>")
}

// to show a clock
function startTime()
{
var today=new Date()
var h=today.getHours()
var m=today.getMinutes()
var s=today.getSeconds()
// add a zero in front of numbers<10
m=checkTime(m)
s=checkTime(s)
document.getElementById('txt').innerHTML=h+":"+m+":"+s
tt=setTimeout('startTime()',500)
}
function checkTime(i)
{
if (i<10) 
  {i="0" + i}
  return i
}

//
//Ajax code goes here
function LoadXMLDocument()
{
try
{
    var xmlHttp;  //first create the xmlHttpRequest object
    if(window.XMLHttpRequest)
    {
        xmlHttp=new XMLHttpRequest();
    }
    else
    {
        xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
    }
    xmlHttp.onreadystatechange=function()
    {
        if (xmlHttp.readyState==4 && xmlHttp.status==200)
        {
            document.getElementById("myDiv").innerHTML=xmlHttp.responseText;
        }
        else
        {
            //alert("Error");
        }
    }
    xmlHttp.open("GET","Ajax_info.txt",true);
    xmlHttp.send();
 }
 catch(err)
 {
   //alert(err);  
 }   
    
}