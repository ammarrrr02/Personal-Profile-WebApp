<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>${userName} - Student Profile</title>
<style>        
    body {
        font-family: Arial, sans-serif;
        background-color: #f9fafb;
        display: flex;
        justify-content: center;
        padding: 40px 20px;
    }

    .box {
        background: #ffffff;
        border: 1.5px solid #d1d5db; /* The clean line box */
        border-radius: 8px;
        padding: 24px 30px;
        width: 100%;
        max-width: 480px;
    }

    h2 {
        margin-top: 0;
        padding-bottom: 10px;
        border-bottom: 1.5px solid #e5e7eb; /* Line under the title */
    }

    input, textarea {
        width: 100%;
        padding: 8px;
        margin-top: 4px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        padding: 10px 18px;
        background-color: #2563eb;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }
</style>
    </head>
    <body>
        
    <div class="box">
       
        <h2>Student Profile Summary</h2>
        
        <p><strong>Full Name👤:</strong> ${userName}</p>
        <p><strong>Student ID🆔:</strong> ${userStudentID}</p>
        <p><strong>Program🎓:</strong> ${userProgram}</p>
        <p><strong>Email Address📧:</strong> ${userEmail}</p>
        <p><strong>Hobby⚽:</strong> ${userHobby}</p>
        <p><strong>Short Self Intro💬:</strong><br> ${userIntro}</p>
        
        <hr>
        <a href="index.html">Edit / Create Another Profile</a>
      </div>

    </body>
</html>
