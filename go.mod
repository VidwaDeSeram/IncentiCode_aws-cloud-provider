module github.com/VidwaDeSeram/IncentiCode_aws-cloud-provider

go 1.18

// replace github.com/VidwaDeSeram/IncentiCode_recode v0.0.0 => ../recode

// replace github.com/VidwaDeSeram/IncentiCode-agent v0.0.0 => ../agent

require (
	github.com/VidwaDeSeram/IncentiCode-agent v0.0.1
	github.com/VidwaDeSeram/IncentiCode_recode v1.0.0
	github.com/aws/aws-sdk-go-v2 v1.15.0
	github.com/aws/aws-sdk-go-v2/config v1.13.1
	github.com/aws/aws-sdk-go-v2/credentials v1.8.0
	github.com/aws/aws-sdk-go-v2/feature/dynamodb/attributevalue v1.6.0
	github.com/aws/aws-sdk-go-v2/service/dynamodb v1.13.0
	github.com/aws/aws-sdk-go-v2/service/ec2 v1.29.0
	github.com/golang/mock v1.6.0
	github.com/jsonmaur/aws-regions/v2 v2.3.1
	golang.org/x/crypto v0.0.0-20220313003712-b769efc7c000
)

require (
	github.com/aws/aws-sdk-go-v2/feature/ec2/imds v1.10.0 // indirect
	github.com/aws/aws-sdk-go-v2/internal/configsources v1.1.6 // indirect
	github.com/aws/aws-sdk-go-v2/internal/endpoints/v2 v2.4.0 // indirect
	github.com/aws/aws-sdk-go-v2/internal/ini v1.3.5 // indirect
	github.com/aws/aws-sdk-go-v2/service/dynamodbstreams v1.11.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/accept-encoding v1.7.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/endpoint-discovery v1.5.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/internal/presigned-url v1.7.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/sso v1.9.0 // indirect
	github.com/aws/aws-sdk-go-v2/service/sts v1.14.0 // indirect
	github.com/aws/smithy-go v1.11.1 // indirect
	github.com/google/uuid v1.3.0 // indirect
	github.com/gosimple/slug v1.12.0 // indirect
	github.com/gosimple/unidecode v1.0.1 // indirect
	github.com/jmespath/go-jmespath v0.4.0 // indirect
	golang.org/x/sys v0.0.0-20220224120231-95c6836cb0e7 // indirect
	golang.org/x/term v0.0.0-20210927222741-03fcf44c2211 // indirect
	gopkg.in/yaml.v2 v2.4.0 // indirect
)
