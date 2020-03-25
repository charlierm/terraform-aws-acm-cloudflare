## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.0 |
| cloudflare | ~> 2.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| allow\_validation\_record\_overwrite | Allow Cloudflare record creation to overwrite existing records | `bool` | `true` | no |
| cf\_api\_key | n/a | `any` | n/a | yes |
| cf\_email | Configure the Cloudflare Provider | `any` | n/a | yes |
| domain\_name | Primary certificate domain name | `string` | n/a | yes |
| region | n/a | `string` | `""` | no |
| subject\_alternative\_names | Subject alternative domain names | `list(string)` | `[]` | no |
| tags | Extra tags to attach to the ACM certificate | `map(string)` | `{}` | no |
| validation\_record\_ttl | Cloudflare time-to-live for validation records | `number` | `60` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn | Arn of generated certificate to be used on Cloudfronts,ALBs,etc... |

