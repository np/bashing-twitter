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
sha256sums=('e90527e6e0d03f7cea8ce044a40dbec01d7655a403280689a0cd0474bede0130'
            '08361b58357f258d7e9a8024182ac9a71996849169ee87f8652f61261ee409e8'
            '32edb90289de9ff2f59d8aedf8503eec5fa9aa3d56886696c1940d18f1e0adee'
            'fa611091a8b586373f56b312ea0cf66f5506eeb0166c6ff58b9d77083a083266'
            '1e259a04e55f25808ca9ed606c25569b2377eb91ebd63789ad6bc0548dc4b811'
            'c8fdb4488966f64b70da8112138a90d436138196b9f85de42397a373a2220112'
            'ee4ee6720a9d3281d6d935c457d3950edd219e3f8511f9cab5e94b2df79c966f'
            '329c45ca4df60061ff313c9bd6787a70de91e9cbc130d2703b0a70f35721fecf'
            'eb1fe667d28fccb2f38ea5c68ec8edd46236f3de54c4ccbcbd8d9b01eaf17c2d'
            'ee3013bd608670710467b282ea3be8cb6eb24880109ac37c84e032b13782e78b'
            '01d2f2f2cd05c6ca21081727e825f15f64ed4121c0842be385cd5347b9a704c8'
            'e8e5ba09b4b1bc1541286e84eaf959e71ba763db99f932ff078b59fd313ce0b2'
            'f9dedc243c3ef6ebe7bede0be676768a820d3e744ce0f0e32d43fe9dce709459'
            '24c1dcf281e33176d521473f52bff7f5ca6046dd2a4b47265347013121856882'
            'c7d3ab89e25bfa53068167aea0aba2f73b7c48a09baef2a0a3beb1936ac93c9f'
            'a2fb82719f775c9e6bdb35eab8b0dd51497d435fc282f461622092143dd2f3d1'
            '4ed6dd69b1671e1ed8d72f1a4aaedf410f36447d44bc9f9b5e29ca6e62331cfc'
            'a921bf263fe9ee01b55e2c792206c0cff1d7b2f44ef73d369dacce4cb474b4f2'
            '84a8ccc219e73e59fa1979a7ea94c9e5b6cfa16c16dfa327fb97ce7f451e0b10')

package()
{
  for i in "${source[@]}"; do
    [ "$i" = LICENSE ] || install -D "$i" "$pkgdir/usr/bin/$i" || return 1
  done
  install -D LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE" || return 1
}
