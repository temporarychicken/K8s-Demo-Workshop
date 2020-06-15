echo "Please enter the name for your workshop subdomain. Please use only lowercase letters."
read SUBDOMAIN
echo $SUBDOMAIN
find ~/K8s-Demo-Workshop \( -type d -name .git -prune \) -o -type f -print0 | xargs -0 sed -i "s/ws1/$SUBDOMAIN/g"



