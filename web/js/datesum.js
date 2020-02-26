function getDate()
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm}
    today = yyyy+"/"+mm+"/"+dd;

    document.getElementById("todayDate").value = today;
}

//call getDate() when loading the page
getDate();


// we used jQuery 'keyup' to trigger the computation as the user type
function sum() {
      var txtFirstNumberValue = document.getElementById('txt1').value;
      var txtSecondNumberValue = document.getElementById('txt2').value;
      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
      if (!isNaN(result)) {
         document.getElementById('txt3').value = result;
      }
}
function getDate2()
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm}
    today = yyyy+"/"+mm+"/"+dd;

    document.getElementById("todayDate2").value = today;
}

//call getDate() when loading the page
getDate2();


// we used jQuery 'keyup' to trigger the computation as the user type
function sum2() {
      var txtFirstNumberValue = document.getElementById('txt12').value;
      var txtSecondNumberValue = document.getElementById('txt22').value;
      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
      if (!isNaN(result)) {
         document.getElementById('txt32').value = result;
      }
}
function getDate3()
{
    var today = new Date();
    var dd = today.getDate();
    var mm = today.getMonth()+1; //January is 0!
    var yyyy = today.getFullYear();
    if(dd<10){dd='0'+dd} if(mm<10){mm='0'+mm}
    today = yyyy+"/"+mm+"/"+dd;

    document.getElementById("todayDate3").value = today;
}

//call getDate() when loading the page
getDate3();


// we used jQuery 'keyup' to trigger the computation as the user type
function sum3() {
      var txtFirstNumberValue = document.getElementById('txt13').value;
      var txtSecondNumberValue = document.getElementById('txt23').value;
      var result = parseInt(txtFirstNumberValue) * parseInt(txtSecondNumberValue);
      if (!isNaN(result)) {
         document.getElementById('txt33').value = result;
      }
}