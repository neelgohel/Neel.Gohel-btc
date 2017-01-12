function sunday()
{
  var i=new Number();
  var list="";
  for(i=2017;i<2050;i++)
  {
    var date = new Date(i,0,1);
    if(date.getDay()==0)
    {
      list=list+i.toString()+"<br/>"
    }
  }
  document.getElementById("years").innerHTML=list;
}
