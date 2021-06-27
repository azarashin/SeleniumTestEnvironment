rm -rf /home/target/tester_cs/build/target
mv $1  /home/target/tester_cs/build/target
cd  /home/target/tester_cs
docker-compose build
docker-compose run tester_cs bash /home/workspace/tester_cs/build/run_test.sh