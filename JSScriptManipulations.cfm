<!DOCTYPE html>
<html>
    <head>
        <script>

            function objectHandling(){
                var name2 = { id: '1234', name1: 'Kannan' };
                var university2 = { id: '1234', university1: 'Harvard'};
                var PersonalDetails = Object.assign({}, name2, university2);
    
                var objResultArea =  document.getElementById("objResultArea");

                objResultArea.innerHTML += JSON.stringify(PersonalDetails);
                console.log("PersonalDetails :: ", PersonalDetails);

                var o1 = { a: 1 };
                var o2 = { b: 2 };
                var o3 = { c: 3 };
    
                var obj = Object.assign({}, o1, o2, o3);
                console.log(obj);

            }

            function myFunction(params) {
                // JS Problems
                // 1. add this string at the last of your array "FifthElm" 
                var arr = ["firstElm", "secElm", "ThirdElm", "FourthElm"];
                arr.push("FifthElm");
                var showCaseElm = document.getElementById("showcase_section");
                // alert(arr);
                
                showCaseElm.innerHTML = arr;

                var mybtnElm = document.getElementById("mybtn").addEventListener("click", function () {
                    var htmlSectionElm = document.getElementById("htmlSection").style;

                    if (htmlSectionElm.display == 'none') {
                        htmlSectionElm.display = "block";
                    } else {
                        htmlSectionElm.display = "none";
                    }
                })
            }



        </script>
    </head>
    <body onload="myFunction()">
        <div id="showcase_section"></div>

        <div id="htmlSection" style="background-color: blue;">
            HTML Content Here
        </div>
        <button id="mybtn">
            My Button
        </button>

        <br>
        <br>
        <br>
        <button id="mybtn"  onclick="objectHandling()">
            Click Me For See The Object handling Results
        </button>
        <div id="objResultArea">
            Results Here <br>
        </div>
    </body>
</html>