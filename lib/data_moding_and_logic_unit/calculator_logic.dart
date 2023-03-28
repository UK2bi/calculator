
class CalculatorLogic {
  double num1 = 0.0;
  double num2 = 0.0;
  String operand = "";
  String preOutput = "0";
  String postOutput = "0";


  buttonPressed(String buttonText){

    if(buttonText == "CLEAR"){
      preOutput = "0";
      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else if (buttonText == "+" || buttonText == "-" || buttonText == "/" || buttonText == "X"){

      num1 = double.parse(postOutput);

      operand = buttonText;

      preOutput = "0";

    } else if(buttonText == "."){

      if(preOutput.contains(".")){
        print("Already conatains a decimals");
        return;

      } else {
        preOutput = preOutput + buttonText;
      }

    } else if (buttonText == "="){

      num2 = double.parse(postOutput);

      if(operand == "+"){
        preOutput = (num1 + num2).toString();
      }
      if(operand == "-"){
        preOutput = (num1 - num2).toString();
      }
      if(operand == "X"){
        preOutput = (num1 * num2).toString();
      }
      if(operand == "/"){
        preOutput = (num1 / num2).toString();
      }

      num1 = 0.0;
      num2 = 0.0;
      operand = "";

    } else {

      preOutput = preOutput + buttonText;

    }
  }


}
