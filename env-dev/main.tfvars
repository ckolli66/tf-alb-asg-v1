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

ami     = "ami-0220d79f3f480ecf5"
zone_id = "Z06404431NXHJ1IDZF7W2"