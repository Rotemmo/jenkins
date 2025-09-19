README – Jenkins Pipeline Task
===============================
1. Repo URL: https://github.com/Rotemmo/jenkins.git
(git clone https://github.com/Rotemmo/jenkins.git
cd jenkins)
2. Docker Commands:
    2.1 Run Jenkins Controller-
        docker network create jenkins-net
        docker run -d --name jenkins-controller --network jenkins-net -p 8080:8080 -p 50000:50000 -v jenkins-data:/var/jenkins_home jenkins/jenkins:lts
    2.2 Run Jenkins Agent-
        docker run -d --name jenkins-agent --network jenkins-net -e JENKINS_URL=http://jenkins:8080 -e JENKINS_AGENT_NAME=linux-docker-1 -e JENKINS_SECRET=<SECRET_FROM_NODE> -e JENKINS_AGENT_WORKDIR=/home/jenkins/agent -v /var/run/docker.sock:/var/run/docker.sock -v jenkins-agent-data:/home/jenkins/agent jenkins/inbound-agent
        (JENKINS_SECRET- is in jenkins UI and in the appendix)
3. Credentials Handling- i didnt use password or secret.
4. Screenshots+ 5. Extra Explanation -> are in the appendix PDF file.
6. Answer- 
    6.1 docker start jenkins
    6.2 Since we defined a fixed volume (jenkins_home:/var/jenkins_home), so that all settings, users, jobs, and history are saved on the local disk and do not disappear when the container is closed.
7. Also, in the appendix PDF file.