# change the location for the log files below
$log_file_location = "path_for_logging_file\log.log"

Function LogWrite
{
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$False)]
        [string]$logstring,

        [Parameter(Mandatory=$False)] 
        [ValidateSet("INFO","WARN","ERROR","FATAL","DEBUG")]
        [string] $level="INFO"
    )

    $stamp = (Get-Date).toString("yyyy/MM/dd HH:mm:ss")
    $record = "$stamp $level $logstring"
    Add-content $log_file_location -value $record
}

# we must have the python path set in environmental variables
LogWrite "Reading virtual environment's folder name"
$folder_name = Read-Host -Prompt "Enter virtual environment's folder name"
LogWrite "Reading virtual environment's name"
$venv_name = Read-Host -Prompt "Enter virtual environment's name"

try{
    # create virtual environment folder
    if (Test-Path $folder_name){
        LogWrite "Folder already exists"
    }
    else{
        LogWrite "Creating virtual environment's folder"
        mkdir $folder_name
    }
    
    # get into the newly created folder and create venv
    if (Test-Path $folder_name){
        LogWrite "Getting into virtual environment's folder"
        cd $folder_name
        LogWrite "Creating virtual environment"
        python -m venv "new_virtual_env"
        LogWrite "Virtual environment created successfully"
    }
    else{
        LogWrite "There was a problem"
    }  
}
catch{
    LogWrite $Error[0] "ERROR"
}

Read-Host -Prompt "Press Enter to exit"