<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Calculator</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                background-color: #f2f2f2;
                margin: 0;
                padding: 0;
            }

            .container {
                border-radius: 5px;
                background-color: #fff;
                margin: 50px auto;
                padding: 30px;
                max-width: 400px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            h1 {
                text-align: center;
                color: #4caf50;
                margin-bottom: 30px;
            }

            label {
                font-size: 18px;
                color: #607d8b;
                display: block;
                margin-bottom: 10px;
            }

            input[type="text"] {
                width: calc(100% - 20px);
                padding: 10px;
                margin-bottom: 15px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            .custom-radio {
                margin-bottom: 15px;
                display: flex;
                align-items: center;
            }

            .custom-radio input[type="radio"] {
                display: none;
            }

            .radio-label {
                display: inline-block;
                width: 30px;
                height: 30px;
                line-height: 30px;
                text-align: center;
                border: 1px solid #ccc;
                border-radius: 50%;
                margin-right: 10px;
                cursor: pointer;
            }

            input[type="radio"]:checked + .radio-label {
                background-color: #4caf50;
                color: white;
            }

            button {
                width: 48%;
                background-color: #4caf50;
                color: white;
                padding: 14px 20px;
                margin-top: 15px;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            button:hover {
                background-color: #3e8e41;
            }

            .btn-container {
                text-align: center;
                width: 100%;
                display: flex;
                justify-content: space-between;
                margin-top: 20px;
            }

            .reset-button {
                background-color: #f44336;
            }

            .reset-button:hover {
                background-color: #da190b;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Calculator</h1>
            <form action="calculate.jsp" method="post" onsubmit="return validateForm()">
                <div class="form-group">
                    <label for="firstvalue">Enter first value</label>
                    <input type="text" id="firstvalue" name="firstnumber">
                </div>
                <div class="form-group">
                    <label>Select operation</label><br>
                    <div class="custom-radio">
                        <input type="radio" id="addition" value="addition" name="operation"> 
                        <label class="radio-label" for="addition">+</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="substraction" value="substraction" name="operation"> 
                        <label class="radio-label" for="substraction">-</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="multiplication" value="multiplication" name="operation"> 
                        <label class="radio-label" for="multiplication">×</label>
                    </div>
                    <div class="custom-radio">
                        <input type="radio" id="division" value="division" name="operation"> 
                        <label class="radio-label" for="division">÷</label>
                    </div>
                </div>
                <div class="form-group">
                    <label for="secondnumber">Enter second value</label>
                    <input type="text" id="secondnumber" name="secondnumber">
                </div>
                <div class="btn-container">
                    <button type="submit">CALCULATE</button>
                    <button type="reset">RESET</button>
                </div>
            </form> 
        </div>
    </body>
</html>
