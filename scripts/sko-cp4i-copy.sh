#! /usr/bin/env bash

echo "copying from cp4i-demo repo"
echo ""
set -x
channel_swap () {
    channel=$(cat $1 | grep channel | cut -d":" -f2 | xargs)
    oldchnl=$(cat $2 | grep channel | cut -d":" -f2 | xargs)
    sed -i"bak" "s#${oldchnl}#${channel}#g" $2
    rm ${2}bak
}
instance_swap () {
    license=$(cat $1 | grep "license:" | cut -d":" -f2 | xargs)
    version=$(cat $1 | grep "version:" | cut -d":" -f2 | xargs)
    oldlicn=$(cat $2 | grep "license:" | cut -d":" -f2 | xargs)
    oldvers=$(cat $2 | grep "version:" | cut -d":" -f2 | xargs)
    sed -i"bak" "s#${oldlicn}#${license}#g;s#${oldvers}#${version}#g" $2
    rm ${2}bak
}
# subscription updates 

channel_swap "../cp4i-demo/subscriptions/2022.2/01-platform-navigator-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-platform-navigator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/02-asset-repo-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-assetrepository-operator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/03-operations-dashboard-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-opsdashboard-operator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/04-api-connect-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-apic-operator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/05-event-streams-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-eventstreams-operator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/06-mq-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-mq-operator/values.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/07-app-connect-subscription.yaml" "../multi-tenancy-gitops-services/operators/ibm-ace-operator/values.yaml"

channel_swap "../cp4i-demo/subscriptions/2022.2/01-platform-navigator-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-platform-navigator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/02-asset-repo-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-assetrepository-operator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/03-operations-dashboard-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-opsdashboard-operator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/04-api-connect-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-apic-operator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/05-event-streams-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-eventstreams-operator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/06-mq-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-mq-operator.yaml"
channel_swap "../cp4i-demo/subscriptions/2022.2/07-app-connect-subscription.yaml" "0-bootstrap/single-cluster/2-services/argocd/operators/ibm-ace-operator.yaml"

instance_swap "../cp4i-demo/instances/2022.2/01-platform-navigator-instance.yaml" "../multi-tenancy-gitops-services/instances/ibm-platform-navigator-instance/values.yaml"

instance_swap "../cp4i-demo/instances/2022.2/01-platform-navigator-instance.yaml" "0-bootstrap/single-instance/2-services/argocd/instances/ibm-platform-navigator-instance.yaml"

cp ../cp4i-demo/instances/2022.2/02-asset-repo-ai-instance.yaml  ../multi-tenancy-gitops-services/instances/assetrepo

cp ../cp4i-demo/instances/2022.2/03-operations-dashboard-instance.yaml ../multi-tenancy-gitops-services/instances/opsdashboard

cp ../cp4i-demo/instances/2022.2/04-apic-emm-tracing-hpa-test-billing-instance.yaml ../multi-tenancy-gitops-services/instances/apic-demo

cp ../cp4i-demo/instances/2022.2/05-event-streams-instance.yaml ../multi-tenancy-gitops-services/instances/es-demo

cp ../cp4i-demo/instances/2022.2/06-ace-dashboard-instance.yaml ../multi-tenancy-gitops-services/instances/ace
cp ../cp4i-demo/instances/2022.2/07-ace-switch-server-instance.yaml ../multi-tenancy-gitops-services/instances/ace
cp ../cp4i-demo/instances/2022.2/08-ace-designer-local-ai-instance.yaml ../multi-tenancy-gitops-services/instances/ace

cp ../cp4i-demo/artifacts/02-qmgr-mqsc-config.yaml ../multi-tenancy-gitops-apps/sko-sample/mqmgr/
cp ../cp4i-demo/instances/2022.2/09-qmgr-ace-native-ha-trace-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/mqmgr

cp ../cp4i-demo/instances/2022.2/10-ace-is-mqapi-prem-trace-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-mqapiprem/
cp ../cp4i-demo/instances/2022.2/11-ace-is-mqapi-dflt-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-mqapidflt
cp ../cp4i-demo/instances/2022.2/12-ace-is-designer-sfleads-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-sflead
cp ../cp4i-demo/instances/2022.2/13-ace-is-mqfwd-event-trace-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-fwdmqevnt
cp ../cp4i-demo/instances/2022.2/14-ace-is-mock-backend-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-backend
cp ../cp4i-demo/instances/2022.2/15-ace-is-kafka-email-trace-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-evnt2mail

cp ../cp4i-demo/instances/2022.2/16-ace-is-esapi-scram-instance.yaml ../multi-tenancy-gitops-apps/sko-sample/ace-es-scram
#17-ace-is-mqivt-instance.yaml
#18-ace-is-aceivt-instance.yaml