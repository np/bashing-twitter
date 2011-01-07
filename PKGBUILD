# Contributor: Nicolas Pouillard <nicolas.pouillard@gmail.com>
pkgname=bashing-twitter
pkgver=0.4
pkgrel=1
pkgdesc="Twitter tools written in bash"
arch=('any')
url='https://github.com/np/bashing-twitter'
license=('custom')
depends=('bash' 'json-tools') # 'twurl' ...)
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
            '2b5760dd9a26470a7722976576e7fe22925ac2de1161e8aa789e2eb1142e067e'
            '32edb90289de9ff2f59d8aedf8503eec5fa9aa3d56886696c1940d18f1e0adee'
            '43bf0d3a566561a7f03b7fd9cdbba7cd19b8d7483f16e6bed65717b5c4e2d67b'
            'd388c9ab84f59950a7862b19e63ce8d1c9eccc4bd7f9bcf15e908467587458e2'
            '4adb7ef802d38d21ee94e44b9d71e67cb5967706cc210f6d0e732552b59816be'
            'cd87d6bd0a102ff04858d2772a30dbc9828d883112f6d6d2949308b911d66ec0'
            '9a1bd82712ca6baa955e3b7ebf730e4a305e7a8f298ef72016b4ebccff8e7121'
            '8c16c4ee3c7afd412a99fa267362de0822553d5bfa6f1c3b5cf2f2c7e8dea3de'
            '1104a786c3211df599e2d4a0ffd11a56f5ba3400e316065cc1cc191fad18c5af'
            '1f1663d54ce192f4031480b56b7a513d300429d7ebdae29f6d9d3e1d32ef6257'
            '92b45d7da148e9cdfda58f7828408d30cb00944aa5192665c816e319d8352149'
            '7ab549f805eccbcdff527a7a01d7ab1647345da00d63c7894bba15675c2cc95d'
            '15082d2b478b0599d8e15fc3731a6ac8e6121ff4230651c4358948ae32d12c8a'
            'cb128da924e826c29e09407e875c74225fc80b5dc0f806adcf9187189c76f4e6'
            '243c0546875e59b666ea05b5bfb074deda78beda34cb179776e49f13081c6766'
            '8998169de7a8868b6146ba7ae15aed2d044c2b741f1f9a70399fc4e01fcb7f98'
            '3bf76e6a64db1599b1ef1c06b4dd52f7889f9e9e3e8451a1b0f2f11b4b734faf'
            '1f51fc836a218171a6a92d8462e766b7a8d7cbed2566d6b0ec3d162fba7ccbc9')

package()
{
  for i in "${source[@]}"; do
    [ "$i" = LICENSE ] || install -D "$i" "$pkgdir/usr/bin/$i" || return 1
  done
  install -D LICENSE "$pkgdir/usr/share/licenses/$pkgname/LICENSE" || return 1
}
