# Python Virtual Environment with Right Click

Below we will see an approach on how to automate the creation of an empty python virtual environment by simply right-clicking in a desired folder and selecting a custom action.   
For this quick action to work we must have Python installed and declare an environmental variable for it. 

The process for creating the virtual environment is quite simple and straightforward. 

* The **venv_creation_process.ps1** asks the user to enter the venv folder name and the venv name, creates the folder of the virtual environment and the environment itself. 
* The **run_process.bat** file executes the previously mentioned .ps1 file.

We use a bat file in order to assign the execution of it to the right-click action.  

As regards the EMC tool we have to create a new action and assign to it the execution of the .bat file.  

![Imgur](https://i.imgur.com/QCk2nrul.png)  

After the above assignment, we must be able to see the custom action to our right-click.  

![Imgur](https://i.imgur.com/XG2tNvMl.png)  

Now by clicking this action a command prompt will appear, in which the user must enter the venv folder name and the venv name and just press Enter.

![Imgur](https://i.imgur.com/0rI6yjEl.png)  

**Voila!** The virtual environment is ready.

