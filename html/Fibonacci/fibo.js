var num1=0;
		var num2=1;
		var list=new Array();
		list=[0,1];
		var num=document.getElementById("number").value;
		var num3;
    var ser=""

		function fibonacci(num1,num2,num)
		{

			if(num == 0)
			{
        		ser="0"
   			}
  			else if(num == 1)
  			{
      	  		ser="0 1";
    		}
    		else
    		{
      	  	num3 = num1 + num2;
        		if(num3 > num)
         		{
            		document.getElementById("series").innerHTML = list;
        		}
        		else {

            		list.push(num3);
            		num1=num2;
            		num2=num3;
            		fibonacci(num1,num2,num);
        		}
    		}
		}
