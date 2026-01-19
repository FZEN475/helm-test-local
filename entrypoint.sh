#!/usr/bin/env ash
python3 --version
source /fnc.sh
install_ca_certs "${CUSTOM_CA_CERTS}"
add_helm_repositories
install_helm_plugins

if [ $? -ne 0 ]; then
    log_error "Не удалось установить один из helm-плагинов"
    exit 1
fi

if [ "$DELETE_HELM" = "true" ]; then
  error_output=$(helm_delete 2>&1) || log_warn "Предупреждение: $error_output"
fi

if [ "$INSTALL_HELM" = "true" ]; then
    helm_deploy
fi


