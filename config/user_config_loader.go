package config

import (
	"context"

	"github.com/VidwaDeSeram/IncentiCode_aws-cloud-provider/userconfig"
	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/credentials"
)

type UserConfigLoader struct{}

func NewUserConfigLoader() UserConfigLoader {
	return UserConfigLoader{}
}

func (UserConfigLoader) Load(userConfig *userconfig.Config) (aws.Config, error) {
	return config.LoadDefaultConfig(
		context.TODO(),
		config.WithCredentialsProvider(
			credentials.NewStaticCredentialsProvider(
				userConfig.Credentials.AccessKeyID,
				userConfig.Credentials.SecretAccessKey,
				userConfig.Credentials.SessionToken,
			),
		),
		config.WithRegion(userConfig.Region),
	)
}
