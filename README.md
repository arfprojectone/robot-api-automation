## Cara Clone Repo

1. Copy `Url` berikut ini https://github.com/arfprojectone/robot-api-automation.git<br>
2. Open Git Bash/Terminal dilaptop/PC<br>
3. Ketik `"git clone"` + paste `Url`
                     
 ```sh
$ git clone https://github.com/arfprojectone/robot-api-automation.git.git
```
*** Install Library ***<br>
pip install robotframework<br>
pip install robotframework-requests<br>

*** Run Test Case Step ***<br>
single run              -> robot file_name.robot<br>
multi run               -> robot path_folder/*.robot<br>
all run                 -> robot path_folder<br>
run with tags           -> robot --include Regression folder_name<br>
exclude run with tags   -> robot --exclude Regression folder_name<br>
