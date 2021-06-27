# Jenkins setting

1. On the Jenkins home page, click Manage Jenkins.
2. Click System Settings.
3. In the Global Properties section, check Environment Variables.

# Script to run build in Jenkins job. 

cd /home/target/tester_cs
sudo ./run_container.sh $WORKSPACE
