function pana()
  {
   var regex = /([a-z])(?!.*\1)/g;
   var str=document.getElementById('str').value.toLowerCase();
   if(str=="")
   {
    alert("Enter String first!!");
   }
   else
   {
    if(str.match(regex).length == 26)
    {
     document.getElementById('panaCheck').innerHTML='"'+str+'"'+" is pangram";
    }
    else
    {
     document.getElementById('panaCheck').innerHTML='"'+str+'"'+" is not pangram";
    }

   }
  }
