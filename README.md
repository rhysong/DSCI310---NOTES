# DSCI310---NOTES

## Example to create integrate RENV with Dockerfile
1. Create a empty repository in Github and clone to your computer
    * git clone [link]

2. Create a new project using the existing repository/directory you just cloned.
    * Top right hand corner in Rstudio

3. Create a Dockerfile
    * [console] `code .` 
      * Opens VScode if you have it setup
      * Use sidebar to create file and name it "Dockerfile"
    * alternatively you can run [console] `touch Dockerfile`
      * Make sure you are in the right working directory
4. Setup Dockerfile
    * See attached Dockerfile for example
    * [console] `docker build --platform linux/x86_64 --tag dsci310-notes .`
    * [console] `docker run -it --rm -e PASSWORD="apassword" -p 8787:8787 -v /$(pwd)://home//rstudio dsci310-notes`

5. Setup Makefile
    * Create a makefile with the file name "Makefile" in directory
    * Structure is in the make file
    * what you want to make : what you need to make it
    * .PHONY to specify there is no dependencies
    
6. Create a example rmarkdown report
    * Use Rstudio Newfile on the topbar
    
7. Use RENV to snapshot what packages we used to automatically be included in Docker Image
    * Install RENV using packages tab
    * Run `renv::init()` in console
    * renv only snapshots the packages you used if you actively used it
    * renv.lock stores the packages you used
    * Run `renv::snapshot()` to update renv.lock file with the latest packages        you used
    * follows steps here to integrate renv with docker 
      https://rstudio.github.io/renv/articles/docker.html
    * This method installs the packages into a new directory called /project
    

Creating R-Package basic steps: <br>
1. Install `install.packages("devtools")` <br>
2. Load `library("devtools")` <br>
3. Use `create_package(path)` within your project folder <br>
4. `use_git()` if not already in git enabled folder. <br>
5. Create a new function with `use_r(<name of function>)` <br>
6. Load your newly written function with `load_all()` <br>
7. Edit DESCRIPTION file and add your name, and email/repo <br>
8. Add a license with `use_mit_license()` <br>
9. Insert Roxygen2 skeleton using the Code menu in taskbar and fill out skeleton <br>
10. Make sure your example actually runs or you with fail the check() later <br>
11. Run document to update NAMESPACE <br>
12. If you use any external packages use `use_package(<name>)` to load them into     NAMESPACE <br>
13. Run `document()` to update NAMESPACE <br>
14. Run `use_testthat()` to create test folder, Run `use_test(<function name>)`     to create test for specific function <br>
    See [this](https://r-pkgs.org/whole-game.html#use_testthat) for example <br>

15. If you are uploading package to github use `use_readme_rmd()` to create a       readme file for the repo

Git hub actions for COVR <br>
1. RUN:
`library("devtools")` <br>
`install.packages("covr")` <br>
`install.packages("DT")` <br>
`install.packages("htmltools")` <br>
`library(covr)` <br>
`report()` <br>

2. Use `use_github_action("test-coverage")` to create a github workflow

