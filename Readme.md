# eCerto Distributed System In Docker Containers With Scripts
## Contents
> Scrips

> Requirements
>> Software

>> Project structure

> Guide
### Scripts
In the `scripts` folder you will find five scripts:
- `Setup.ps1`
- `Rebuild CO API.ps1` (Will reset your password in the database)
- `Rebuild PO API.ps1` (Will reset your password in the database)
- `Rebuild CO Web.ps1`
- `Rebuild PO Web.ps1`
### Requirements
#### Software
Required software includes:
- Docker
- Powershell
#### Project structure
For any of these scripts to work the project structure must be as follows:
```
root/
┠╾╾╾ Readme.txt
┠╾╾╾ Scripts/
┠╾╾╾ CO/
┃    ┠╾╾╾ Total-Price-API/ (api repo branch)
┃    ┖╾╾╾ Total-Price-Web/ (web repo branch)
┖╾╾╾ PO/
     ┠╾╾╾ Total-Price-API/ (api repo PO branch)
     ┖╾╾╾ Total-Price-Web/ (web repo PO branch)
```

### Setup Script Guide
1. Clone the 4 repositories' into their respective folder
2. Run the `Setup.ps1` script in powershell
3. Navigate to the `scripts` within powershell
4. Drag the `Setup.ps1` you wish to run into the powershell window
5. You should now see all four web pages (Front-ends and swagger APIs)

### Rebuild Script Guide
1. Navigate to the `scripts` within powershell
2. Drag the script you wish to run into the powershell window
