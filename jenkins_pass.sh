#!/bin/bash

docker-compose exec test_controller cat /var/lib/jenkins/secrets/initialAdminPassword

