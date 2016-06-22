/// working with cookies
function getCookie(c_name)
{
    if (document.cookie.length>0)
    {
        c_start=document.cookie.indexOf(c_name + "=")
        if (c_start!=-1)
        { 
            c_start=c_start + c_name.length+1 
            c_end=document.cookie.indexOf(";",c_start)
            if (c_end==-1) 
                c_end=document.cookie.length
            return unescape(document.cookie.substring(c_start,c_end))
        } 
    }
    return ""
}

function setCookie(c_name,value,expiredays)
{
    var exdate=new Date()
    exdate.setDate(exdate.getDate()+expiredays)
    document.cookie=c_name+ "=" +escape(value)+ ((expiredays==null) ? "" : ";expires="+exdate.toGMTString())
}

function checkCookie()
{
    username=getCookie('username')
    if (username!=null && username!="")
    {
        alert('Welcome again '+username+'!')
    }
    else 
    {
        username=prompt('Please enter your name:',"")
        if (username!=null && username!="")
        {
            setCookie('username',username,365)
        }
    }
}


//Required field validator
//it can not work properly............
function validate_required(field,alerttxt)
{
    with (field)
    {
        if (value==null||value=="")
        {
            alert(alerttxt);
            return false
        }
        else {return true}
    }
}

function validate_form(thisform)
{
    with (thisform)
    {
        if (validate_required(email,"Email must be filled out!")==false)
        {
            email.focus();
            return false
        }
    }
}

// counter with java script
var  c=0
var t
function timedCount()
{    
    document.getElementById('txtCount').value=c
    c=c+1
    t=setTimeout("timedCount()",1000)
}

function stopCount()
{
    clearTimeout(t)
}