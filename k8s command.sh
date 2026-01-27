 1  sudo hostnamectl set-hostname Worker-Agent
    2  sudo init 6
    3  sudo apt update && sudo apt upgrade -y
    4  ls
    5  aws s3 ls
    6  curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
    7  ls
    8  sudo apt install unzip
    9  unzip awscliv2.zip
   10  ls
   11  sudo ./aws/install
   12  /usr/local/bin/aws --version
   13  aws ls
   14  aws s3 ls
   15  curl -Lo kops https://github.com/kubernetes/kops/releases/download/$(curl -s https://api.github.com/repos/kubernetes/kops/releases/latest | grep tag_name | cut -d '"' -f 4)/kops-linux-amd64
   16  chmod +x kops
   17  sudo mv kops /usr/local/bin/kops
   18  kops
   19  sudo apt-get update
   20  # apt-transport-https may be a dummy package; if so, you can skip that package
   21  sudo apt-get install -y apt-transport-https ca-certificates curl gnupg
   22  # If the folder `/etc/apt/keyrings` does not exist, it should be created before the curl command, read the note below.
   23  # sudo mkdir -p -m 755 /etc/apt/keyrings
   24  curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.35/deb/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg
   25  sudo chmod 644 /etc/apt/keyrings/kubernetes-apt-keyring.gpg # allow unprivileged APT programs to read this keyring
   26  # This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
   27  echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.35/deb/ /' | sudo tee /etc/apt/sources.list.d/kubernetes.list
   28  sudo chmod 644 /etc/apt/sources.list.d/kubernetes.list   # helps tools such as command-not-found to work correctly
   29  sudo apt-get update
   30  sudo apt-get install -y kubectl
   31  kubectl
   32  kops
   33  aws s3 mb s3://uday2026
   34  export KOPS_STATE_STORE=s3://uday2026
   35  kops create cluster --name=test.k8.local --zones=us-east-2a,us-east-2b,us-east-2c --node-count=2 --state=s3://uday2026 --yes
   36  kops validate cluster
   37  kubectl get all
   38  kubectl get pods
   39  kops validate cluster
   40  kubectl get nodes
   41  kubectl get all
   42  kubectl get cluster
   43  kubectl run pod web --image=httpd
   44  kubectl get pods
   45  kubectl delete pod
   46  kubectl get pods
   47  kubectl delete pod pod
   48  kubectl get pods
   49  kubectl run pod web --image=httpd
   50  kubectl get pods
   51  kubectl describe pod
   52  kubectl delete pod pod
   53  kubectl run httpd-pod --image=httpd --restart=Never
   54  kubectl get pods
   55  kubectl describe pods
   56  kube get pods -o wide
   57  kubectl get pods -o wide
   58  kubectlget pods
   59  kubectl get pods
   60  kubectl delete httpd-pod
   61  kubectl delete pod httpd-pod
   62  kubectl get pods
   63  kubectl create deployment web-deploy --image=httpd
   64  kubectl get deployments
   65  kubectl delete deployment web-deploy
   66  kubectl get deployments
   67  kubectl create deployment web-deploy --image=httpd replicas=2
   68  kubectl create deployment web-deploy --image=httpd --replicas=2
   69  kubectl get deployments
   70  kubectl get deployments -o wide
   71  kubectl describe pods
   72  kubectl describe deployments
   73  kubectl describe deployments -o wide
   74  kubectl get deployments
   75  kubectl get deployments -o wide
   76  kubectl get pods
   77  kubectl get deployment web-deploy
   78  kubectl describe deployment web-deploy
   79  ls
   80  sudo init 6
   81  history
   82  export KOPS_STATE_STORE=s3://uday2026
   83  kubectl get pods
   84  kubectl get deployments
   85  kubectl expose deployment web-deploy --name=web --port=80 --target-port=80
   86  kubectl get deployments
   87  kubectl get pods
   88  kubectl delete web-deploy-7fb4468764-8qvnk
   89  kubectl delete pod web-deploy-7fb4468764-8qvnk
   90  kubectl get pods
   91  kubectl get deployments
   92  kubectl get svc
   93  kubectl delete web
   94  kubectl delete svc web
   95  kubectl get svc
   96  kube get deploymants
   97  kubectl get deployments
   98  kubectl get pods
   99  kubectl expose deployment web-deploy --name=web --type=LoadBalancer --port=80 --target-port=80
  100  kubectl get svc
  101  kubectl get deployments
  102  kubectl delete web-deploy
  103  kubectl delete deployment web-deploy
  104  kubectl get deployments
  105  kubectl get pods
  106  kubectl get svc
  107  kubectl delete svc web
  108  kubectl get svc
  109  kubectl get pods
  110  kubectl get deployments
  111  kubectl get replicas
  112  history
  113  kops get all
  114  kops delete cluster --name=test.k8.local --yes
  115  ls
  116  history
  117  aws s3 ls
  118  export KOPS_STATE_STORE=s3://uday2026
  119  ls
  120  kubectl get pods
  121  history
  122  kops create cluster --name=test.k8.local --zones=us-east-2a,us-east-2b,us-east-2c --node-count=2 --state=s3://uday2026 --yes
  123  ll
  124  kops validate cluster
  125  kubectl get all
  126  history
  127  kubectl create deployment web-deploy --image=httpd --replicas=2
  128  kubectl get deployments
  129  kubectl get all
  130  kubectl delete deployment web-deploy
  131  kubectl get deployments
  132  ls
  133  kubectl get all
  134  kubectl get deployments
  135  kubectl get all
  136  vi pod.yml
  137  kubectl get all
  138  ls
  139  vi pod.yml
  140  history
  141  kubectl get all
  142  ls
  143  kubectl get pods
  144  kubectl get deployments
  145  vi pod.yml
  146  kubectl apply -f pod.yml
  147  cat pod.yml
  148  kubectl apply -f pod.yml
  149  vi pod.yml
  150  ls
  151  sudo vi pod.yml
  152  kubectl apply -f pod.yml
  153  kubectl get all
  154  kubectl delete pod/nginx-pod
  155  ls
  156  vi deployment.yml
  157  ls
  158  cat deployment.yml
  159  kubectl apply -f deployment.yml
  160  kubectl get deployments
  161  kubectl get all
  162  ls
  163  vi service.yml
  164  ls
  165  cat service.yml
  166  kubectl apply -f service.yml
  167  kubectl get all
  168  ls
  169  cat service.yml
  170  cat deployment.yml
  171  ls
  172  kubectl get all
  173  kubectl delete svc service/nginx-service
  174  history
  175  ls
  176  kubectl get svc
  177  kubectl delete nginx-service
  178  kubectl delete service nginx-service
  179  kubectl get service
  180  kubectl get deployments
  181  kubectl delete deployment nginx-deployment
  182  kubectl get deployments
  183  kubectl get all
  184  histroty
  185  history
ubuntu@Worker-Agent:~$