function allergy(num)
{
	
	var a=[128,64,32,16,8,4,2,1];
	var b=["cats","pollen","chocolate","tomatoes","strawberries","shellfish","peanuts","eggs"];
	var c='';
	var i;
	for(i=0;i<a.length;i++)
	{
		
		if(num>=a[i])
		{
			c=c+b[i]+" ";
			num=num-a[i];
		}
	}
	
	document.getElementById("show").innerHTML = c;
	
}
