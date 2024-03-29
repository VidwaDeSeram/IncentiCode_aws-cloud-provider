package service

import (
	"encoding/json"

	"github.com/VidwaDeSeram/IncentiCode_aws-cloud-provider/infrastructure"
	"github.com/VidwaDeSeram/IncentiCode_recode/entities"
	"github.com/VidwaDeSeram/IncentiCode_recode/stepper"
	"github.com/aws/aws-sdk-go-v2/service/ec2"
)

func (a *AWS) StopDevEnv(
	stepper stepper.Stepper,
	config *entities.Config,
	cluster *entities.Cluster,
	devEnv *entities.DevEnv,
) error {

	var devEnvInfra *DevEnvInfrastructure
	err := json.Unmarshal([]byte(devEnv.InfrastructureJSON), &devEnvInfra)

	if err != nil {
		return err
	}

	ec2Client := ec2.NewFromConfig(a.sdkConfig)

	stepper.StartTemporaryStep("Waiting for the EC2 instance to stop")

	return infrastructure.StopInstance(
		ec2Client,
		devEnvInfra.Instance,
	)
}
