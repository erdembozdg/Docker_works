# docker_programming

docker run -it -v $(pwd):/app ruby:2.4 sh
gem install travis

travis login --github-token 000ac7d5da50a9905c7ece518b06ae218bce8e05
travis encrypt-file service-account.json -r  erdembozdg/docker-projects
