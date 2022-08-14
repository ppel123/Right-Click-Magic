# define websites txt file
$links = Get-Content .\websites.txt
$counter = 0

foreach ($link in $links){

    # Microsoft Edge
    # Start-Process msedge.exe -ArgumentList "-url $link"

    # Open in Private Window
    # Start-Process msedge.exe -ArgumentList "-url $link -inprivate"
    
    # Mozilla Firefox -> firefox.exe parameters https://wiki.mozilla.org/Firefox/CommandLineOptions#-private
    Start-Process 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "-url $link"

    # Open in Private Window
    # If ($counter -eq 0){
    #     Start-Process 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "-private-window"
    #     Start-Sleep -Seconds 1
    #     Start-Process 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "-private-window $link"
    # }
    # Else{
    #     Start-Process 'C:\Program Files\Mozilla Firefox\firefox.exe' -ArgumentList "-private-window $link"
    # }
    
    # Google Chrome
    # Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -ArgumentList '-url $link'

    # Open in Private Window
    # Start-Process -FilePath "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" -ArgumentList '--incognito -url $link'
    
    Start-Sleep -Seconds 1
    $counter = $counter + 1
}