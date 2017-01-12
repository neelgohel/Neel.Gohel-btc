function displayBill(unit)
{
	var ammount=0;
	var cate=document.getElementById("category").value;
	switch(cate)
	{
		 case "RGP":
				resident();
				break;

		case "BPL":
				bpl();
				break;

		case "GPL":
				gpl();
				break;

		case "Non-RGP":
				nonrgp();
				break;

		case "LTP-AG":
				ltpag();
				break;

		default:

	}

			function resident(){
				if(unit<=50){
					ammount=ammount+(unit*3.20)+90;
				}
				else if(unit>50&&unit<200){
						ammount=ammount+(50*3.20)+((unit-50)*3.90)+90;
				}
				else{
						ammount=ammount+(50*3.20)+((150)*3.90)+((unit-200)*3.90)+90;
				}
				ammount=ammount+(ammount*(15/100));
			}

				function bpl(){
				if(unit<=30){
					ammount=ammount+(unit*1.5)+10;
				}
				else if(unit>30&&unit<50){
						ammount=ammount+(30*1.5)+((unit-30)*3.20)+10;
				}
				else if(unit>50&&unit<200){
						ammount=ammount+(30*1.5)+(20*3.20)+((unit-50)*3.90)+10;
				}
				else{
						ammount=ammount+(30*1.5)+(20*3.20)+(150*3.90)+((unit-200)*0)+10;
				}
				ammount=ammount+(ammount*(15/100));
			}

			function gpl(){
				if(unit<=200){
					ammount=ammount+(unit*4.10)+100;
				}
				else{
						ammount=ammount+(200*4.10)+((unit-200)*4.80)+100;
				}
				ammount=ammount+(ammount*(15/100));
			}

			function nonrgp(){
				unit = unit*1000;
				if(unit>15000){
					alert("Enter valid value");
				}
				else if(unit>=0 && unit<=5000){
					ammount=ammount+(unit*4.50);
					ammount = ammount+(unit *70/1000);
				}
				else{
					ammount=ammount+(unit*4.50);
					ammount = ammount+(unit *90/1000);
				}
				ammount=ammount+(ammount*(25/100));
				ammount=ammount+(ammount*(10/100));
				ammount=ammount+(ammount*(25/100));
				ammount=ammount+(ammount*(11.25/100));
			}

			function ltpag(){
				ammount=ammount+(unit*3.30)+10;
			}

	alert("your Bill Ammount is : "+ammount);
}
