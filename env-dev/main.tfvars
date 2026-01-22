env = "dev"

db_components = {
  redis = {
	ports         = { ssh = 22 , redis = 6379 }
	instance_type = "t3.small"
  }
  mongodb   = {
	ports = { ssh = 22 , mongodb = 27017 }
	instance_type = "t3.small"
  }
  mysql   = {
	ports = { ssh = 22 , mysql = 3306 }
	instance_type = "t3.small"
  }
  rabbitmq   = {
	ports = { ssh = 22 , rabbitmq = 5672 }
	instance_type = "t3.small"
  }
}

app_components = {
  frontend   = {
	min_nodes = 1
	max_nodes = 10
	ports = { ssh = 22 , app = 80 }
	instance_type = "t3.small"
  }
  cart = {
	min_nodes = 1
	max_nodes = 10
	ports         = { ssh = 22 , app = 8080 }
	instance_type = "t3.small"
  }
  user   = {
	min_nodes = 1
	max_nodes = 10
	ports = { ssh = 22 , app = 8080 }
	instance_type = "t3.small"
  }
  catalogue   = {
	min_nodes = 1
	max_nodes = 10
	ports = { ssh = 22 , app = 8080 }
	instance_type = "t3.small"
  }
  shipping   = {
	min_nodes = 1
	max_nodes = 10
	ports = { ssh = 22 , app = 8080 }
	instance_type = "t3.small"
  }
  payment   = {
	min_nodes = 1
	max_nodes = 10
	ports = { ssh = 22 , app = 8080 }
	instance_type = "t3.small"
  }
}

ami            = "ami-0220d79f3f480ecf5"
zone_id        = "Z06404431NXHJ1IDZF7W2"
default_vpc_id = "vpc-0bb05b4ce9592d0d0"
subnets        = ["subnet-0301e9e21d6e797cf", "subnet-0edfbefd92844afcd"]