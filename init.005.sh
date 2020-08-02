export AZURE_COMMONS_MODULE_DIR="$(pwd)";

function azure_login() {
    local force_relogin="false" variable_name subscription_id;
    import_args "$@";
    check_required_arguments "azure_login" variable_name;

    local variable_file="/tmp/infraxys/variables/AZURE-CONFIG/$variable_name";
    if [ ! -f "$variable_file" ]; then
        log_fatal "$variable_file not found. It's required to login to Azure.";
    fi;

    local client_id="$(cat "$variable_file" | jq -r '.appId')";
    local client_secret="$(cat "$variable_file" | jq -r '.password')";
    local tenant_id="$(cat "$variable_file" | jq -r '.tenant')";
    local tenant_id="$(cat "$variable_file" | jq -r '.tenant')";
    local display_name="$(cat "$variable_file" | jq -r '.displayName')";

    log_info "Logging into Azure with $display_name.";
    az login --service-principal -u $client_id -p $client_secret --tenant $tenant_id;
    log_info "Logged in successfully.";
    export ARM_CLIENT_ID="$client_id";
    export ARM_CLIENT_SECRET="$client_secret";
    export ARM_SUBSCRIPTION_ID="";
    export ARM_TENANT_ID="$tenant_id";
    export ARM_SUBSCRIPTION_ID="$subscription_id";
}
