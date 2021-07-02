# Jenkins setting

1. On the Jenkins home page, click Manage Jenkins.
2. Click System Settings.
3. In the Global Properties section, check Environment Variables.
4. add shell script as follows as build event in jenkins job.

```
sudo cp -rf /var/lib/jenkins/workspace/${JOB_NAME} /home/workspace/${JOB_NAME}
wget "http://tester_cs:3000/build?browser=firefox&job=${JOB_NAME}" -O result

cat result

if sed -n 1,1p result | grep -q "<<<SUCCEED>>>"; then exit 0; fi
if sed -n 1,1p result | grep -q "<<<FAILED>>>"; then exit 4; fi
exit 8
```