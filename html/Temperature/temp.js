function convert()
{
  var cel_t=document.getElementById("cel").value;
  var fah_t=document.getElementById("far").value;

  var convert=0;
  if(isNaN(cel_t) || isNaN(fah_t))
  {
    alert("Please enter only numbers.")
  }
  else if((!cel_t && !fah_t) || (cel_t && fah_t))
  {
    alert("Please enter only one number")
  }
  else if(cel_t)
  {
    convert=cel_t*(9/5)+32;
    document.getElementById('far').value=convert.toString();
  }
  else if (fah_t)
  {
    convert=((fah_t-32)*5/9);
    document.getElementById('cel').value=convert.toString();
  }
}
