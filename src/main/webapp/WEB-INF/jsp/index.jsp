<!DOCTYPE html>

<html>

<head>
    <title>Collapse/Expand</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width">
    <style>
        #container{
            margin:0 auto;
            width:80%;
            overflow:auto;
        }
        table.gridtable {
            margin:0 auto;
            width:95%;
            overflow:auto;
            font-family: helvetica,arial,sans-serif;
            font-size:14px;
            color:#333333;
            border-width: 1px;
            border-color: #666666;
            border-collapse: collapse;
            text-align: center;
        }
        table.gridtable th {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
            background-color: #F6B4A5;
        }
        table.gridtable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #666666;
        }
    </style>
</head>

<body>
<div class="container" id="container">
    <table class="gridtable" id="tableMain">
        <thead>
        <tr class="tableheader">
            <th>customer</th>
            <th>product</th>
            <th>thedate</th>
            <th>value</th>
        </tr>
        </thead>
        <tbody>
        <tr class="breakrow"><td>customer 01</td><td></td><td></td><td></td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 01</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 02</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 03</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 04</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 05</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 06</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 07</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 08</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 09</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 01</td><td>product 10</td><td>04 12 2017</td><td>634.50</td></tr>

        <tr class="breakrow"><td>customer 02</td><td></td><td></td><td></td></tr>
        <tr class="datarow"><td>customer 02</td><td>product 01</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 02</td><td>product 02</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 02</td><td>product 03</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 02</td><td>product 04</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 02</td><td>product 05</td><td>04 12 2017</td><td>634.50</td></tr>

        <tr class="breakrow"><td>customer 03</td><td></td><td></td><td></td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 01</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 02</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 03</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 04</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 05</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 06</td><td>04 12 2017</td><td>634.50</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 07</td><td>30 10 2017</td><td>974.57</td></tr>
        <tr class="datarow"><td>customer 03</td><td>product 08</td><td>04 12 2017</td><td>634.50</td></tr>

        </tbody>
    </table>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script>
    $( document ).ready(function() {

        //collapse and expand sections

        // $('.breakrow').click(function(){
        $('#tableMain').on('click', 'tr.breakrow',function(){
            $(this).nextUntil('tr.breakrow').slideToggle(200);
        });
    });
</script>

</body>
</html>