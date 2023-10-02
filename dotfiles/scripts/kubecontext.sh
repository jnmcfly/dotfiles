#!/bin/bash

CONTEXT=$(kubectl config current-context)
NS=$(kubectl config view --minify -o jsonpath={..namespace})

echo "{\"text\": \"$CONTEXT:$NS\", \"class\": \"kubecontext\"}"
