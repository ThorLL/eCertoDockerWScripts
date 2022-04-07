In the scripts folder you'll find five scripts:
	Setup 
	Rebuild CO API (Will reset your password in the database)
	Rebuild PO API (Will reset your password in the database)
	Rebuild CO Web
	Rebuild PO Web
	
For any of these scripts to work the project structur must be as follows:

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
┃    ┃    ┗╾╾╾ ...
┃    ┗╾╾╾╾╾ Web/
┃         ┠╾╾╾ Public/
┃         ┠╾╾╾ Src/
┃         ┗╾╾╾ ...
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
┃    ┃    ┗╾╾╾ ...
┃    ┗╾╾╾ Web/
┃	    ┠╾╾╾ Public/
┃         ┠╾╾╾ Src/
┃         ┗╾╾╾ ...
┗╾╾╾ Scripts/
