## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| cloudflare | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cf\_api\_key | n/a | `any` | n/a | yes |
| cf\_email | Configure the Cloudflare Provider | `any` | n/a | yes |
| domain\_name | Primary certificate domain name | `string` | n/a | yes |
| region | Aws region to  ACM certificate | `string` | `"us-east-1"` | no |
| subject\_alternative\_names | Subject alternative domain names | `list(string)` | `[]` | no |
| tags | Extra tags to attach to the ACM certificate | `map(string)` | `{}` | no |
| validation\_record\_ttl | Cloudflare time-to-live for validation records | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Arn of generated certificate to be used on Cloudfronts,ALBs,etc... |

