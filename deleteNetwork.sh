
KUBECONFIG_FOLDER=./configFiles

kubectl delete -f ${KUBECONFIG_FOLDER}/chaincode_instantiate.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/chaincode_install.yaml

kubectl delete -f ${KUBECONFIG_FOLDER}/join_channel.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/create_channel.yaml

kubectl delete --ignore-not-found=true -f ${KUBECONFIG_FOLDER}/docker.yaml

kubectl delete -f ${KUBECONFIG_FOLDER}/org1Deployment.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/org2Deployment.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/org3Deployment.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/org4Deployment.yaml

kubectl delete -f ${KUBECONFIG_FOLDER}/generateArtifactsJob.yaml
kubectl delete -f ${KUBECONFIG_FOLDER}/copyArtifactsJob.yaml

kubectl delete -f ${KUBECONFIG_FOLDER}/createVolume.yaml
kubectl delete --ignore-not-found=true -f ${KUBECONFIG_FOLDER}/docker-volume.yaml

sleep 15

echo -e "\npv:" 
kubectl get pv
echo -e "\npvc:"
kubectl get pvc
echo -e "\njobs:"
kubectl get jobs 
echo -e "\ndeployments:"
kubectl get deployments
echo -e "\nservices:"
kubectl get services
echo -e "\npods:"
kubectl get pods

echo -e "\nNetwork Deleted!!\n"

