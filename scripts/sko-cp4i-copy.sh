#! /usr/bin/env bash

echo "copying from cp4i-demo repo"
echo ""

01-platform-navigator-instance.yaml

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