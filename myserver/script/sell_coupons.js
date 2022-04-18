/*https://schier.co/blog/2014/12/08/wait-for-user-to-stop-typing-using-javascript.html ?
16/04/2019 12:50*/
/* var textInput = document.getElementById('cart_id');

// Init a timeout variable to be used below
var timeout = null;

// Listen for keystroke events
textInput.onkeyup = function (e) {

    // Clear the timeout if it has already been set.
    // This will prevent the previous task from executing
    // if it has been less than <MILLISECONDS>
    clearTimeout(timeout);

    // Make a new timeout set to go off in 800ms
    timeout = setTimeout(function () {
        alert('Input Value:', textInput.value);
    }, 500);
}; */

//https://www.w3schools.com/js/tryit.asp?filename=tryjs_ajax_database 2/6/2019 13:05
function sell_coupons(){ 
    let cart_id=document.querySelector("#student_id");
    if (!cart_id.value )
        return ;
    let sell_breakfast=document.querySelector("#sell_breakfast");
    let sell_lunch=document.querySelector("#sell_lunch");
    let sell_dinner=document.querySelector("#sell_dinner");
    let xhttp;
    if (sell_breakfast.value=="0" && sell_lunch.value=="0" && sell_dinner.value=="0")
        return ;
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            result.innerHTML = this.responseText;
            cart_id.style.color="green";
            if (result.innerHTML === "Μη δικαιοούχος")
                cart_id.style.color="red";
            else if (result.innerHTML === "Επιτυχής πώληση"){
                let temp=document.querySelector("#stoudents_koupons_numbers");
                temp.Text= (int.Parse(temp.Text) + 1).ToString(); 
            }       
            result.style.color=cart_id.style.color;

            alert(this.responseText);

        }
    };
    alert(cart_id.value+sell_breakfast.value+sell_lunch.value +sell_dinner.value);
    xhttp.open("GET", "../ajax/sell_coupons.php?student_id="+cart_id.value+"&sell_breakfast="+sell_breakfast.value+"&sell_lunch="+sell_lunch.value+"&sell_dinner="+sell_dinner.value, true);
    xhttp.send();
}
/* function Check_id()
{
    let cart_id=document.querySelector("#cart_id");  
    let result=document.querySelector("#result");
    if (cart_id.value==1234){
        result.innerHTML="Δωρεάν Σίτιση";  
            
        cart_id.style.color="green"; 
        result.style.color="green";
        //result.className="text-success"; 
    }
    else if (cart_id.value==4321){
        result.innerHTML="Κουπόνι";
        cart_id.style.color="green";
        result.style.color="green";
        //result.className="text-success";
    }
    else {
        result.innerHTML="Μη δικαιοουχος";
        cart_id.style.color="red";
        
        result.style.color="red";
        //result.className="text-danger";
    }
    // Init a timeout variable to be used below
    setTimeout(function () {
        result.innerHTML="";
        cart_id.value="";
        cart_id.style.color="";
    }, 1000);   

     
} */
/* function count_clients()
{

    let cart_id=document.querySelector("#cart_id");  
    let result=document.querySelector("#result");
    if (cart_id.value==1234){
        result.innerHTML="Δωρεάν Σίτιση";  
            
        cart_id.style.color="green"; 
        result.style.color="green";
        let result=document.querySelector("#stoudents_koupons_numbers");
        //result.className="text-success";
    }
    else if (cart_id.value==4321){
        result.innerHTML="Κουπόνι";
        cart_id.style.color="green";
        result.style.color="green";
        let temp=document.querySelector("#stoudents_koupons_numbers");
        temp.Text= (int.Parse(temp.Text) + 1).ToString();
        //result.className="text-success";
    }
    else {
        result.innerHTML="Μη δικαιοουχος";
        cart_id.style.color="red";        
        result.style.color="red";
        //result.className="text-danger";
    }
    // Init a timeout variable to be used below
    setTimeout(function () {
        result.innerHTML="";
        cart_id.value="";
        cart_id.style.color="";
    }, 1000);   

     
} */