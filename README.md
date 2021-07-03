# Selenium Test Environment

## Basic setup

1. build & run docker-compose

```
docker-compose build --no-cache
docker-compose up - d
```

2. open url http://localhost:8080 with your browser. 

3. run script jenkins_pass.sh to confirm Administrator Password to initialize jenkins. 

```
./jenkins_pass.sh
```

4. Input the Administrator Password in 'Unlock Jenkins' scene in your browser then setup. 

5. Add Job in Jenkins. 

- Set repository URL
- Set branch
- Set additional build step

## Additional step for each test environment

see other readme. 

|Language of test code|URL|
|---|---|
|C#|<a href="./tester_package/tester_cs/README.md">./tester_package/tester_cs/README.md</a>|
