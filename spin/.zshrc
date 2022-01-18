source /etc/zsh/zshrc.default.inc.zsh
#SPIN_SERVICE() {"shopify--$(basename $SPIN_REPO_SOURCE_PATH)";}

alias zedit='vim ~/.zshrc'
alias zupdate='source ~/.zshrc'

alias ll="ls -lhA"
alias c="clear"

alias enable_database='mysql -u root -P "$MYSQL_PORT" -e "GRANT ALL PRIVILEGES ON *.* to 'root'@'%';"'

#
## Spin
#

## NOTE: add `-f` flag to journalctl to watch logs on realtime

# show environment logs (when spin creates/bootstrap the local environment, before starting the server)
alias spin-log-env='journalctl -u spin-environment@shopify--$(basename $SPIN_REPO_SOURCE_PATH).service'
# show server logs (app currently running, like `dev server`)
alias spin-log-server='journalctl -u proc-shopify--$(basename $SPIN_REPO_SOURCE_PATH)@server.service'
# show workers logs (like jobs processes)
alias spin-log-worker='journalctl -u proc-shopify--$(basename $SPIN_REPO_SOURCE_PATH)@worker.service'
# show nginx logs
alias spin-log-nginx='journalctl -u nginx-config@shopify--$(basename $SPIN_REPO_SOURCE_PATH).service'
# show openresty logs (web platform based on nginx)
alias spin-log-openresty="journalctl -u openresty.service"

# reload shadowenv
alias spin-reload-shadowenv="/opt/spin/bin/envfile-to-shadowenv .spin/env > .shadowenv.d/600-spin-envfile.lisp"
# reload environment (reapply config changes)
alias spin-restart-env='systemctl restart spin-environment@shopify--$(basename $SPIN_REPO_SOURCE_PATH).service'
# reload server
alias spin-restart-server='systemctl restart proc-shopify--$(basename $SPIN_REPO_SOURCE_PATH)@server'
# stop server
alias spin-stop-server='systemctl stop proc-shopify--$(basename $SPIN_REPO_SOURCE_PATH)@server'
# reload nginx
alias spin-restart-nginx='systemctl restart nginx-config@shopify--$(basename $SPIN_REPO_SOURCE_PATH).service'

# show failed processes
alias spin-list-failed="systemctl list-units --failed"
# show running processes
alias spin-list-running='systemctl list-units --type=service --state=running | grep -e @server -e @worker -e spin-environment'

alias core_run_server='FEATURE_SET=default PRIVACY_LEVEL=default DISABLE_INLINE_JOBS=1 bin/rails server'

#
## PPP
#

alias setup_core_for_payments_apps="/home/spin/src/github.com/Shopify/payment-apps/.spin/bin/setup_core_for_ppp"
