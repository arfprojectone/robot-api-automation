*** Install ***
pip install robotframework
pip install robotframework-requests

*** Run step ***
single run              -> robot file_name.robot
multi run               -> robot path_folder/*.robot
all run                 -> robot path_folder
run with tags           -> robot --include Regression folder_name
exclude run with tags   -> robot --exclude Regression folder_name 
