$lanDeskUrl = 'http://<servernameorIPaddress>/mbsdkservice/msgsdk.asmx?wsdl'  
$secpasswd = ConvertTo-SecureString "<password>" -AsPlainText -Force
$Creds = New-Object System.Management.Automation.PSCredential ("<domain\username>", $secpasswd)
 
 
Try { 
    $WebService = New-WebServiceProxy -uri $lanDeskUrl -Credential $Creds 
} 
Catch { 
    # Error handling goes in here 
} 
 
$WebService.DeleteComputerByIPName("<machineName to remove>") 