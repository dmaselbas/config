#Aliases for rancher commands
export RANCHER_PROD_ACCESS_KEY=""
export RANCHER_PROD_SECRET_KEY=""
export RANCHER_NP_ACCESS_KEY=""
export RANCHER_NP_SECRET_KEY=""


alias rancherReviewPs="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env review ps"
alias rancherTestPs="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env test ps"
alias rancherIntPs="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env int ps"
alias rancherProdPs="rancher --url https://rancher.global.dish.com/v2-beta --access-key $RANCHER_PROD_ACCESS_KEY --secret-key $RANCHER_PROD_SECRET_KEY --env prod ps"

alias rancherProdTail="rancher --url https://rancher.global.dish.com/v2-beta --access-key $RANCHER_PROD_ACCESS_KEY --secret-key $RANCHER_PROD_SECRET_KEY --env prod logs -f"
alias rancherReviewTail="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env review logs -f"
alias rancherIntTail="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env int logs -f"
alias rancherTestTail="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env test logs -f"

alias rancherProdRestart="rancher --url https://rancher.global.dish.com/v2-beta --access-key $RANCHER_PROD_ACCESS_KEY --secret-key $RANCHER_PROD_SECRET_KEY --env prod restart"
alias rancherReviewRestart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env review restart"
alias rancherIntRestart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env int restart"
alias rancherTestRestart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env test restart"

alias rancherProdStop="rancher --url https://rancher.global.dish.com/v2-beta --access-key $RANCHER_PROD_ACCESS_KEY --secret-key $RANCHER_PROD_SECRET_KEY --env prod stop"
alias rancherReviewStop="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env review stop"
alias rancherIntStop="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env int stop"
alias rancherTestStop="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env test stop"

alias rancherProdStart="rancher --url https://rancher.global.dish.com/v2-beta --access-key $RANCHER_PROD_ACCESS_KEY --secret-key $RANCHER_PROD_SECRET_KEY --env prod start"
alias rancherReviewStart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env review start"
alias rancherIntStart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env int start"
alias rancherTestStart="rancher --url https://rancher-np.global.dish.com/v2-beta --access-key $RANCHER_NP_ACCESS_KEY --secret-key $RANCHER_NP_SECRET_KEY --env test start"
