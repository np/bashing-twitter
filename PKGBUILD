# Contributor: Nicolas Pouillard <nicolas.pouillard@gmail.com>
pkgname=bashing-twitter
pkgver=0.2
pkgrel=1
pkgdesc="Twitter tools written in bash"
arch=('any')
url='https://github.com/np/bashing-twitter'
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
            '7ab5cfe9c4d9cbbdad45c112a214831a5b7fe48171950fe9e537f449dad23231'
            '32edb90289de9ff2f59d8aedf8503eec5fa9aa3d56886696c1940d18f1e0adee'
            'fa611091a8b586373f56b312ea0cf66f5506eeb0166c6ff58b9d77083a083266'
            'd388c9ab84f59950a7862b19e63ce8d1c9eccc4bd7f9bcf15e908467587458e2'
            '4adb7ef802d38d21ee94e44b9d71e67cb5967706cc210f6d0e732552b59816be'
            '73ad752fe5bd338cb23ba2f881a1e8d6983a42345628f8b2823e2b3c5b3c439e'
            '9a1bd82712ca6baa955e3b7ebf730e4a305e7a8f298ef72016b4ebccff8e7121'
            'b3ed54e556d356d53e919819e7027bd32ef0f3717a14644b0f7feee2f4664d97'
            '1104a786c3211df599e2d4a0ffd11a56f5ba3400e316065cc1cc191fad18c5af'
            '1f1663d54ce192f4031480b56b7a513d300429d7ebdae29f6d9d3e1d32ef6257'
            '92b45d7da148e9cdfda58f7828408d30cb00944aa5192665c816e319d8352149'
            '7ab549f805eccbcdff527a7a01d7ab1647345da00d63c7894bba15675c2cc95d'
            '15082d2b478b0599d8e15fc3731a6ac8e6121ff4230651c4358948ae32d12c8a'
            'cb128da924e826c29e09407e875c74225fc80b5dc0f806adcf9187189c76f4e6'
            'daa0a116c532c17d724bc3a40d4d490fb1aa2ae7064dde66b6ed5a5ee39f8572'
            '161be77af2606ef41964a64d2baf97ef968ea433630a9fd7dc7d81006f5fbd17'
            '6f8ec2bc30c1a154aff562b938711f004f241e24bb932a846816a1a46df03e9e'
            '799d70f55e37351f26c54e8f85d351645b6650071692aabce1173bbe06705bd0')

package()
{
  for i in "${source[@]}"; do
    [ "$i" = LICENSE ] || install -D "$i" "$pkgdir/usr/bin/$i" || return 1
  done
  install -D LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE" || return 1
}
