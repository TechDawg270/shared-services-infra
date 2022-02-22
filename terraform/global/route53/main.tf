locals {
  tags = {
    Name        = "shared-services-dns"
    owner       = "dane"
    product     = "infra"
    terraform   = "true"
    repo        = "https://github.com/TechDawg270/shared-services-infra/tree/master/terraform"
    description = "Shared Services AWS infa"
  }
}

resource "aws_route53_zone" "demo" {
  name = "danes-demo-days.com"

  tags = local.tags
}

resource "aws_route53_zone" "gitlab" {
  name = "gitlab.danes-demo-days.com"

  tags = local.tags
}

resource "aws_route53_record" "gitlab-ns" {
  zone_id = aws_route53_zone.demo.zone_id
  name    = "gitlab.danes-demo-days.com"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.gitlab.name_servers
}

resource "aws_route53_zone" "gitlab-pages" {
  name = "gitlab-pages.danes-demo-days.com"

  tags = local.tags
}

resource "aws_route53_record" "gitlab-pages-ns" {
  zone_id = aws_route53_zone.demo.zone_id
  name    = "gitlab-pages.danes-demo-days.com"
  type    = "NS"
  ttl     = "30"
  records = aws_route53_zone.gitlab-pages.name_servers
}

