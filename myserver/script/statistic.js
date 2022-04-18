
function adaptedCheck2(){
	
	adaptedCheck(document.querySelector("#eidos_geymatos"));
}
window.onload=adaptedCheck2;
function adaptedCheck(that) {	
	let t=document.querySelector("#choose_meals");
	let no_change_day=false;	
	let from_day=document.querySelector("#from_day");
	let to_day=document.querySelector("#to_day");
	if (that.value == "adapted") 
		t.className-=" invisible ";
	else{
		t.className+=" invisible ";
		no_change_day=true;
		from_day.value=from_day.defaultValue;
		to_day.value=to_day.defaultValue;
	}
	from_day.readOnly=no_change_day;
	to_day.readOnly=no_change_day;
	if (that.value == "meal"){
		document.querySelector("input[name='breakfast']").checked=false;
		document.querySelector("input[name='lunch']").checked=false;
		document.querySelector("input[name='dinner']").checked=false;
		hours=new Date().getHours();
        if (hours< 12)
            kat_geymatos='breakfast';
        else if (hours< 18)
            kat_geymatos='lunch';
        else
			kat_geymatos='dinner';
		document.querySelector("input[name='"+kat_geymatos+"']").checked=true;
	}else{		
		document.querySelector("input[name='breakfast']").checked=true;
		document.querySelector("input[name='lunch']").checked=true;
		document.querySelector("input[name='dinner']").checked=true;

	
	}
}