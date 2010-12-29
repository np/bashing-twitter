# Contributor: Nicolas Pouillard <nicolas.pouillard@gmail.com>
pkgname=bashing-twitter
pkgver=0.1
pkgrel=1
pkgdesc="Twitter tools written in bash"
arch=('any')
url=''
license=('custom')
depends=('bash') # 'json-tools' 'twurl' ...)
source=(
  LICENSE
  respect-twitter-rate-limit
  try-10-times
  twitter-daily-backup
  twitter-friends
  twitter-friends-timeline
  twitter-get
  twitter-get-pages
  twitter-hourly-backup
  twitter-mentions
  twitter-rate-limit
  twitter-retweeted-by-me
  twitter-retweeted-to-me
  twitter-retweets-of-me
  twitter-show-status
  twitter-user
  twitter-users-lookup
  twitter-user-timeline
  twitter-with-cursor
)

package()
{
  for i in "${source[@]}"; do
    [ "$i" = LICENSE ] || install -D "$i" "$pkgdir/usr/bin/$i" || return 1
  done
  install -D LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE" || return 1
}
