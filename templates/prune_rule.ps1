#Load rule values template using erb
<%= scope.function_template(["windows_firewall/rule_object.ps1"]) %>

#Remove all except 1 with matching rule name
for($i = 2; $i -le $FoundRules.Count; $i++){$Firewall.Rules.Remove($Rule.Name)}