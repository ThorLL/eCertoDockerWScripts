#Docker With Scripts
##eCerto Distributed System In Docker Containers

##Scripts
In the `scripts` folder you'll find five scripts:
- `Setup.ps1`
- `Rebuild CO API.ps1` (Will reset your password in the database)
- `Rebuild PO API.ps1` (Will reset your password in the database)
- `Rebuild CO Web.ps1`
- `Rebuild PO Web.ps1`
##Project structure
For any of these scripts to work the project structure must be as follows:
```
root/
┠╾╾╾ Readme.txt
┠╾╾╾ CO/
┃    ┠╾╾╾ API/
┃    ┃    ┠╾╾╾ TotalPrice/
┃    ┃    ┠╾╾╾ TotalPrice.Auth/
┃    ┃    ┠╾╾╾ TotalPrice.CalcuationsAPI/
┃    ┃    ┠╾╾╾ TotalPrice.Common/
┃    ┃    ┠╾╾╾ TotalPrice.Data/
┃    ┃    ┠╾╾╾ TotalPrice.DataAccess/
┃    ┃    ┠╾╾╾ TotalPrice.Email/
┃    ┃    ┠╾╾╾ TotalPrice.Math/
┃    ┃    ┠╾╾╾ TotalPrice.Repositories/
┃    ┃    ┖╾╾╾ ...
┃    ┖╾╾╾ Web/
┃         ┠╾╾╾ Public/
┃         ┠╾╾╾ Src/
┃         ┖╾╾╾ ...
┠╾╾╾ PO/
┃    ┠╾╾╾ API/
┃    ┃    ┠╾╾╾ TotalPrice/
┃    ┃    ┠╾╾╾ TotalPrice.Auth/
┃    ┃    ┠╾╾╾ TotalPrice.CalcuationsAPI/
┃    ┃    ┠╾╾╾ TotalPrice.Common/
┃    ┃    ┠╾╾╾ TotalPrice.Data/
┃    ┃    ┠╾╾╾ TotalPrice.DataAccess/
┃    ┃    ┠╾╾╾ TotalPrice.Email/
┃    ┃    ┠╾╾╾ TotalPrice.Math/
┃    ┃    ┠╾╾╾ TotalPrice.Repositories/
┃    ┃    ┖╾╾╾ ...
┃    ┖╾╾╾ Web/
┃	    ┖╾╾╾ Public/
┃         ┠╾╾╾ Src/
┃         ┖╾╾╾ ...
┖╾╾╾ Scripts/
```