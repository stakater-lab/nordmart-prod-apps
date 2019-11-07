#!/usr/bin/env groovy
@Library('github.com/stakater/stakater-pipeline-library@v2.16.11') _

executeMakeTargets {
    target= "install-dry-run"
    notifySlack= true
    pushToS3= false
    image= "stakater/pipeline-tools:v2.0.12"
    requiredParams= ["NAMESPACE"]
    NAMESPACE= "nordmart-prod-apps"
}
