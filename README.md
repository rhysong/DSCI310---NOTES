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
    
    
  


