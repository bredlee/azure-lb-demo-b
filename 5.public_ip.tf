resource "azurerm_public_ip" "user21-publicip" {  
name                = "mypublicIP"  
location            = azurerm_resource_group.user21-rg.location  
resource_group_name = azurerm_resource_group.user21-rg.name  
allocation_method   = "Static"  
domain_name_label   = azurerm_resource_group.user21-rg.name  
	
## Resource Group 이름에 대문자를 쓰면 에러 발생 (so, 리소스 그룹은 소문자로 생성)
## 동일 Region에 추가 Public IP 생성시에는 기존 Public IP와 다른 이름을 할당해야 함으로 아래처럼 직접 입력해도 됨
# domain_name_label   = "user21pubip2"


	tags = {    
		environment = "staging"  
	}

}
