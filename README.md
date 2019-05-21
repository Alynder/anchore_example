# Anchore Scan Example


#### Setup Scripts(for those inclined to being lazy)
------
+ **setup.sh:** This will start minkube, deploy the jenkins namespace then it follow up and set up jenkins and deploy the minikube dashboard.

+ **anchore_setup.sh:** This script sets up a security namespace and follows up with the anchore deployment with the most recent helm chart. This deploys into the security namespace.



#### Pipelines

 ##### _Each of these pipelines has my dockerhub in place if you have your own login this will send it to my hub, you can set your own in each pipeline_
 ------

+ **k8s pipeline:** This is used if you have a kubernetes cluster that has the K8s dashboard. Minikube isn't really suitable for this particulare build pipeline. Think EKS cluster more than minikube.

+ **jenkins scan pipeline:** This pipeline is set to run on the jenkins master so no dockers will be populated you can just run on the master as a test and work into the build it can work in eks or minikube. Remember to add the docker pieces into the jenkins container, using the exec function in the Kubernetes Dashboard.
