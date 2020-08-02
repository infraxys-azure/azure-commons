#if ($instance.getAttribute("auto_login") == "1")
azure_login --variable_name "$instance.getAttribute("azure_config_variable")" \
	--subscription_id "$instance.getAttribute("subscription_id")";
#end