<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Survey Form</title>
    <style>
    
            body {
            font-family: Arial, sans-serif;
            margin:auto;
            margin-top: 200px;
        }

        .form-builder {
            max-width: 600px;
            margin: 0 auto;
            padding: 40px;
            background: #e0e1cf;
            
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-builder h2 {
            text-align:justify;
        }

        .form-builder label {
            display: block;
            margin-bottom: 10px;
        }

        .form-builder input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .form-builder .add-question-button {
            background-color: #4cadaf;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin-top: 10px;
            cursor: pointer;
        }
    
    
    
      body, h1, p, ul, li {
            margin: 0;
            padding: 0;
        }

        /* Global styles */
        body {
            font-family: 'Segoe UI', Arial, sans-serif;
            background-image: url('https://www.calsurvey.com/wp-content/uploads/2022/06/online-web-surveys-legal-research.jpg'); /* Add your background image URL here */
            background-size: cover;
            background-color: rgba(255, 255, 255, 0.75); /* Add the desired background transparency here */
            margin: 0;
        }

        /* Navbar styles */
        .navbar {
            background-color: #34495e;
            overflow: hidden;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 15px 0;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .navbar a {
            font-size: 18px;
            color: #ecf0f1;
            text-decoration: none;
            margin: 0 20px;
            transition: color 0.3s;
        }

        .navbar a:hover {
            color: #3498db;
        }

        /* Logo styles */
        .navbar .logo {
            font-size: 24px;
            color: #e74c3c;
            font-weight: bold;
            margin-left: 20px;
        }

        /* Mobile navigation icon */
        .navbar .icon {
            display: none;
            font-size: 24px;
            margin-right: 20px;
            cursor: pointer;
        }

        /* Align services to the left */
        .navbar .services {
            flex: 1;
            display: flex;
            justify-content: flex-start;
        }

        /* Create a dropdown when the screen is less than 600px wide */
        @media screen and (max-width: 600px) {
            .navbar {
                flex-direction: column;
                align-items: flex-start;
                padding: 15px;
            }
            .navbar .services {
                display: none;
            }
            .navbar .icon {
                display: block;
            }
        }
      
    </style>
</head>
<body>
<div class="navbar">
    <a href="auto" class="logo">E-Survey</a>
    <div class="services">
        <a href="home">Home</a>
        <a href="aboutus">About Us</a>
        <a href="login">Services</a>
        <a href="contactus">ContactUS</a>
        <a href="#">My Surveys</a>
    </div>
    <a href="login" class="login-signup">Login / Sign Up</a>
    <a href="javascript:void(0);" class="icon" onclick="toggleMenu()">
        &#9776;
    </a>
</div>


 <div class="form-builder">
        <h2>Create a new Form Now!</h2>
        <form id="form">
            <div id="question-container"></div>
            <button type="button" class="add-question-button" id="add-question">Add a new question </button><br><br><br>
            <input type="submit" value="Create Form">
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const form = document.getElementById('form');
            const questionContainer = document.getElementById('question-container');
            const addQuestionButton = document.getElementById('add-question');
            
            addQuestionButton.addEventListener('click', function() {
                const questionDiv = document.createElement('div');
                questionDiv.className = 'question';
                questionDiv.innerHTML = `
                    <label for="question">Enter your question:</label>
                    <input type="text" name="question" required>
                    <label for="answer-type">Select answer type:</label>
                    <select name="answer-type">
                        <option value="choice">Multiple Choice</option>
                        <option value="text">Text</option>
                    </select>
                    <div class="text-input" style="display: none;">
                        <label for="text-answer">Text Answer:</label>
                        <input type="text" name="text-answer">
                    </div>
                    <div class="answer-options" style="display: none;">
                        <label for="num-choices">Number of Choices (if multiple choice):</label>
                        <input type="number" name="num-choices" min="1">
                    </div>
                `;

                questionContainer.appendChild(questionDiv);

                const answerType = questionDiv.querySelector('select[name="answer-type"]');
                const answerOptions = questionDiv.querySelector('.answer-options');
                const numChoicesInput = questionDiv.querySelector('input[name="num-choices"]');
                const textInput = questionDiv.querySelector('.text-input');

                answerType.addEventListener('change', function() {
                    if (answerType.value === 'text') {
                        answerOptions.style.display = 'none';
                        textInput.style.display = 'block';
                        // Clear previous selection
                        numChoicesInput.value = '';
                        removeChoiceInputs(questionDiv);
                    } else {
                        answerOptions.style.display = 'block';
                        textInput.style.display = 'none';
                        // Clear previous selection
                        textInput.querySelector('input[name="text-answer"]').value = '';
                    }
                });

                numChoicesInput.addEventListener('input', function() {
                    const numChoices = parseInt(numChoicesInput.value);
                    if (!isNaN(numChoices) && numChoices > 0) {
                        createChoiceInputs(questionDiv, numChoices);
                    } else {
                        removeChoiceInputs(questionDiv);
                    }
                });
            });

            function createChoiceInputs(questionDiv, numChoices) {
                const choiceInputs = questionDiv.querySelector('.choice-inputs');
                if (!choiceInputs) {
                    const choiceInputsDiv = document.createElement('div');
                    choiceInputsDiv.className = 'choice-inputs';

                    for (let i = 1; i <= numChoices; i++) {
                        const choiceInput = document.createElement('input');
                        choiceInput.type = 'text';
                        choiceInput.name = `choice-${i}`;
                        choiceInput.placeholder = `Choice ${i}`;
                        choiceInputsDiv.appendChild(choiceInput);
                    }

                    questionDiv.appendChild(choiceInputsDiv);
                }
            }

            function removeChoiceInputs(questionDiv) {
                const choiceInputs = questionDiv.querySelector('.choice-inputs');
                if (choiceInputs) {
                    questionDiv.removeChild(choiceInputs);
                }
            }
        });
    </script>
</body>
</html>
<html>
<style>
body {
  background-image: url("https://e0.pxfuel.com/wallpapers/318/546/desktop-wallpaper-spots-background-light-solid-color.jpg");
  background-repeat: no-repeat;
  background-size: cover;
  background-color: #cccccc;
 }
 </style>
 </html>
</body>
</html>
