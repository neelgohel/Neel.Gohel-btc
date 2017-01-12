function checkyear()
{
var year;
year = document.getElementById("year").value;

if(isNaN(year))
  {
    alert("Please enter valid value");
  }

else{
    if((year % 4==0) && (year % 100!=0) || (year % 400==0))
    {
    alert(year+" is a leap year");
    }
    else
    {
    alert(year+" is not a leap year");
    }
  }
}
