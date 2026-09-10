# Mail DNS Records

Configure the following DNS records for `part-pack.ir`.

| Type | Name               | Value                                            | Priority |
| ---- | ------------------ | ------------------------------------------------ | -------: |
| A    | `mail`             | `185.105.239.121`                                |        — |
| MX   | `@`                | `mail.part-pack.ir.`                             |     `10` |
| TXT  | `@`                | `v=spf1 mx -all`                                 |        — |
| TXT  | `dkim1._domainkey` | `v=DKIM1; k=ed25519; p=<public-key>`                     |        — |
| TXT  | `_dmarc`           | `v=DMARC1; p=none; rua=mailto:info@part-pack.ir` |        — |

## Reverse DNS (PTR)

Configure the server's reverse DNS:

```text
185.105.239.121 → mail.part-pack.ir
```

## Expected Result

```text
part-pack.ir
├── MX → mail.part-pack.ir
├── SPF → v=spf1 mx -all
├── DKIM → DKIM1._domainkey
└── DMARC → p=none

mail.part-pack.ir
└── A → 185.105.239.121

185.105.239.121
└── PTR → mail.part-pack.ir
```
