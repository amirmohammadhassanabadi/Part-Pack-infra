external_url 'https://gitlab.part-pack.ir'
gitlab_rails['gitlab_shell_ssh_port'] = 2222
nginx['enable'] = true
nginx['redirect_http_to_https'] = false
nginx['ssl_certificate'] = "/etc/gitlab/ssl/cert.pem"
nginx['ssl_certificate_key'] = "/etc/gitlab/ssl/private.pem"
gitlab_pages['enable'] = false
prometheus['enable'] = false
alertmanager['enable'] = false
node_exporter['enable'] = false
redis_exporter['enable'] = false
postgres_exporter['enable'] = false
gitlab_exporter['enable'] = false
