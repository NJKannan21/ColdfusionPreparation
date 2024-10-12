<!--- 1. Find the largest number among the three numbers. a = 10, b = 578, c = 400

<cfset b = 487>
<cfset a = 578>
<cfset c = 610>

<cfoutput>
    <div>
        1.Given Numbers are #a#, #b#, #c#.<br>
    </div>

    <cfif a GTE b AND a GTE c>
        &emsp; a is largest Number
    <cfelseif b GTE c AND b GTE a>
        &emsp; b is largest Number
    <cfelse>
        &emsp; c is largest Number
    </cfif>

</cfoutput>

<br>
<br>

<!--- 2. Find the largest number among the arr [10, 578, 487, 610, 431, 495, 384, 599] --->
<cfset arr = [10, 578, 487, 610, 431, 495, 384, 599] />

<cfoutput>
    <div>
        2.Given array #serializeJSON(arr)#
    </div>
    <div>
        <cfset temp = 0>
        <cfloop array="#arr#" index="i" item="j">
            <cfif j GT temp>
                <cfset temp = j>
            </cfif>
            &emsp; &emsp;#i# #j#<br>
        </cfloop>
        &emsp; Largest number among the given array is = #temp#<br>
    </div>
</cfoutput>

<br>
<br>

<!---  3.Check Whether a Number is a Positive or Negative Number --->
<cfset givenNumber = -100>
<cfoutput>
    <div>
        3.Find the fibonacci sequence for given number = #givenNumber#<br>
    </div>
    <cfif givenNumber GTE 0>
        &emsp; Given Number is Positive = #givenNumber#
    <cfelse>
        &emsp; Given Number is Negative = #givenNumber#
    </cfif>
</cfoutput>

<br>
<br>

<!--- 4.Find the fibonacci sequence for given number --->
<cfset givenNumber = 21> <!--- 0 + 1 + 1 + 2 + 3 + 5 + 8 + 13 + 21 --->
<cfoutput>
    <div>
        4.Given Number = #givenNumber#<br>
    </div>
    <cfset num1 = 0>
    <cfset num2 = 1>
    <cfset res = 0>
    &emsp; Start<br> &emsp;

    <cfloop index="i" from="0" to="#givenNumber#">
        &nbsp;#num1#
        <cfif givenNumber GTE res>
            <cfset res = num1 + num2>
            <cfset num1 = num2>
            <cfset num2 = res>
        <cfelse>
            <cfbreak>
        </cfif>
    </cfloop>

    <br>&emsp; END
</cfoutput>


<br>
<br>

<!--- 5. Input: nums = [2,7,11,15], target = 9  given array item sum should match the target and print that item index --->

<cfoutput>
    <cfset arr = [3,2,4] />
    <cfset target = 6 /> <!--- test case 1 --->
    <!--- <cfset arr = [3,3] />
    <cfset target = 6 /> ---> <!--- test case 2 --->
    <!--- <cfset arr = [2, 7, 11, 15] />
    <cfset target = 22 /> ---> <!--- test case 3 --->
    <cfset indexList = "" />
    <div>
        5.Given array = #serializeJSON(arr)# and Target = #target# <br>
    </div>
    <!--- Solution 1 --->
    <!--- <cfloop array="#arr#" index="i" item="val">
        <cfloop index="j" from="1" to="#ArrayLen(arr)#">
            <cfif i NEQ j AND ( target EQ arr[i] + arr[j] )>
                <cfset indexList = j & "," & i>
            </cfif>
        </cfloop>
    </cfloop>
    #indexList# --->
    <!--- Solution 2 --->
    <cfloop array="#arr#" index="i" item="val">
        <cfset temp = target - arr[i] >
        <cfif ArrayContains(arr, temp) NEQ 0>
            <cfset indexList = ArrayContains(arr, temp) & "," & i>
        </cfif>
    </cfloop>
    &emsp; #indexList#
</cfoutput>

<br>
<br>

<!--- 6. To Check Whether Number is Even Or Odd --->
<cfset givenNumber = 51 />
<cfoutput>
    <div>
        6.Given Number = #givenNumber# <br>
    </div>
    <cfif givenNumber % 2 EQ 0>
        &emsp; The given Number #givenNumber# is Even.
    <cfelse>
        &emsp; The given Number #givenNumber# is Odd.
    </cfif>
</cfoutput>

<br>
<br>

<!--- <!--- 7. Write a Program to Find the Length of the String Without using strlen() Function --->
<cfset givenString = "Kannan" />
<cfoutput>
    <div>
        7.Given String = #givenString# <br>
    </div>
    
</cfoutput>

<br>
<br> --->

<!--- 7. Write a Program to Count the Number of Vowels  --->

<cfset givenString = "I'm going to how many vowels pressent this sentence." />
<cfoutput>
    <div>
        7.Given String = #givenString# <br>
    </div>
    
</cfoutput>

<br>
<br>


<!--- 8. Write a Program to Find the Factorial of a Number Using Loops --->

<cfset givenNumber = 6 /> <!--- 4! = 4 * 3 * 2 * 1 --->
<cfoutput>
    <div>
        8.Given String = #givenNumber# <br>
    </div>
    <cfset n = givenNumber >

    <cfloop index="i" from="#givenNumber#" to="2" step="-1">
        &emsp; This is exp = #i# <br>
        <cfset n = n * (i-1)>
    </cfloop>

    &emsp; The Factorial value for #givenNumber#! is = #n#
    
</cfoutput>

<br>
<br>


<!--- 9. Write a Program to Find a Leap Year or Not ---> <!--- If the year is divisible by 4, it's a leap year, except for end-of-century years, which must also be divisible by 400. --->

<!--- 
    The concept of leap year came into existence from the fact that time taken for one revolution of Earth was 365.2425 days i.e. roughly 365.25 or an extra 1/4th of a day. So every four years, we compensate this extra day towards a year called the leap year.

    By adding an extra day every 4 years,
    we have 365*3+366 = 1461 days in 4 years or 146100 days in 400 years.
    In reality, we have 365.2425 * 400 = 146097 days
    (The reason for this difference being the approximation we did for 365.2425 being taken as 365.25 or 365+1/4th of a day)
--->

<cfset givenYear = 2192 />
<cfoutput>
    <div>
        9.Given Year = #givenYear# <br>
    </div>

    <cfif givenYear % 400 == 0> <!--- WE calculate every year divisible 400 as a leap year ---> <!--- 365.2425 * 400 = 146097 days --->
        &emsp; It is a leap year
    <cfelseif givenYear % 100 == 0> <!--- This condition for eliminate the inbetween 3 years( 2100, 2200, 2300 ) in the list of years 2000, 2100, 2200, 2300, 2400 --->
        &emsp; It is not a leap year
    <cfelseif givenYear % 4 == 0> 
        &emsp; It is a leap year
    <cfelse>
        &emsp; It is not a leap year
    </cfif>

</cfoutput>

<br>
<br>

<cfoutput>
    <!--- 10.Write a Program to Find the Sum of the First N Natural Numbers ---> <!--- givenNum = 4, 1+2+3+4 = 10 --->

    <cfset giventNumb = 7>
    <div>
        10.Given Number = #giventNumb# <br>
    </div>
    <cfset sum = 0>
    <cfloop index="i" from="1" to="#giventNumb#">
        <cfset sum += i />
    </cfloop>
    &emsp; The Sum of the 0 to given number is = #sum#
</cfoutput>

<br>
<br>

<cfoutput>
    <!--- 11.Write a Program to Find the Factorial of a Number Using Loops ---> <!--- givenNum = 4, n*(n-1)*(n-2) --->
    <cfset givenNumber = 3>
    <div>
        11.Find Factorial for given number #givenNumber#<br>
    </div>
    <cfset fact = 1>
    <cfloop index="j" from="#givenNumber#" to="1" step="-1">
        <cfset fact *= j>
    </cfloop>
    &emsp; The factorial number for #givenNumber# = #fact#
</cfoutput>

<br>
<br>

<cfoutput>
    <!--- 12.Write a Program to Check Palindrome ---> 
    <cfset givenNumber = 01234321>
    <div>
        12.Find given number #givenNumber# is Palindrome or not<br>
    </div>
    <cfset newNumber = 0>
    <cfset tempNum = givenNumber />

    <cfloop index="k" from="1" to="#len(givenNumber)#">
        <cfset newNumber = (newNumber * 10) + (tempNum % 10) />
        <cfset tempNum = int(tempNum / 10) />
        <!--- <cfdump var="#tempNum#" /> --->
    </cfloop>
    <!--- <cfdump var="#newNumber#" />
    <cfdump var="#len(newNumber)#" />
    <cfdump var="#len(givenNumber)#" /> --->

    <cfif givenNumber EQ newNumber and len(givenNumber) EQ len(newNumber)>
        &emsp; The Given Number #givenNumber# Is Palindrome Number.
    <cfelse>
        &emsp; The Given Number #givenNumber# Is Not a Palindrome Number.
    </cfif>
    
</cfoutput>

<br>
<br>

<cfoutput>
    <!--- 13.Write a Program to Check Whether a Number is an Armstrong Number or Not ( 153 = 1*1*1 + 5*5*5 + 3*3*3  // 153 is an Armstrong number. ) --->
    <cfset givenNumber = 153 />
    <div>
        13.Find given number #givenNumber# is Armstrong or not<br>
    </div>
    <cfset tempNum = givenNumber />
    <cfset findRoot = 1 />
    <cfset armstrongNum = 0 />

    <cfloop index="idx" from="1" to="#len(givenNumber)#">
        <!--- <cfdump var="#armstrongNum#" /> --->
        <cfloop index="i" from="1" to="#len(givenNumber)#">
            <cfset findRoot *= tempNum % 10 >
            <!--- <cfdump var="#findRoot#" label="newNum"/> --->
        </cfloop>

        <cfset armstrongNum += findRoot>
        <cfset findRoot = 1>
        <cfset tempNum = int(tempNum / 10)>
    </cfloop>
    <cfif givenNumber EQ armstrongNum>
        &emsp; Given Number #givenNumber# is armstrong number
    <cfelse>
        &emsp; Given Number #givenNumber# is not armstrong number
    </cfif>
</cfoutput>

<br>
<br>

<cfoutput>
    <!--- 14.Armstrong numbers in the range of 0 and 999. ( 0,1,153,370,371,407 ) --->
    <div>
        14.Find the Armstrong numbers in the range of 0 and 999<br>
    </div>
    <cfset armstrongList = "">
    <cfloop index="OuterIdx" from="0" to="999">
        <cfset givenNumber = OuterIdx>
        <cfset tempNum = givenNumber />
        <cfset findRoot = 1 />
        <cfset armstrongNum = 0 />
        <cfloop index="idx" from="1" to="#len(givenNumber)#">
            <!--- <cfdump var="#armstrongNum#" /> --->
            <cfloop index="i" from="1" to="#len(givenNumber)#">
                <cfset findRoot *= tempNum % 10 >
                <!--- <cfdump var="#findRoot#" label="newNum"/> --->
            </cfloop>
    
            <cfset armstrongNum += findRoot>
            <cfset findRoot = 1>
            <cfset tempNum = int(tempNum / 10)>
        </cfloop>
        <cfif givenNumber EQ armstrongNum>
            <cfset armstrongList = listAppend(armstrongList, givenNumber) />
        </cfif>
    </cfloop>
    &emsp; #armstrongList#
</cfoutput><!--- my o/p = 0,1,2,3,4,5,6,7,8,9,153,370,371,407 Need to check --->
 --->

<!--- 15.Write a Program to Find the Smallest and Largest Element in an Array --->
<cfoutput>
    <div>
        15.Find the Smallest and Largest Element in an Array<br>
    </div>
    <cfset array = [87,407,256,43,567,35,6,153,370,371] />
    <cfdump var="#array#">

    <cfset lowNum = 0 />
    <cfset highNum = 0 />

    <cfloop array="#array#" index="i" value="val">
        <cfif i EQ 1>
            <cfset lowNum = val />
            <cfset highNum = val />
        </cfif>
        
        <cfif highNum LT val>
            <cfset highNum = val />
        <cfelseif lowNum GT val>
            <cfset lowNum = val />
        </cfif>
        <!--- #i# --->
    </cfloop>
    &emsp; #lowNum#
    &emsp; #highNum#
</cfoutput>

<!--- 16. --->