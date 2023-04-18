# Repository Synchronize

![GitHub Actions](https://img.shields.io/badge/github%20actions-%232671E5.svg?style=for-the-badge&logo=githubactions&logoColor=white)

It's a Github Action that you can use to synchronize your code to another Git platforms

## Usage

```yaml
- uses: hatamiarash7/repo-sync@v0.1.0
  with:
    url: https://gitlab.com/username/repository.git
    username: username
    token: ${{ secrets.TARGET_TOKEN }}
```

## Customizing

Following inputs can be used as with keys

| Name       | Type     | Description                                                 |
| ---------- | -------- | ----------------------------------------------------------- |
| `url`      | Required | The URL of target Git repository such as Gitlab, Gitea, etc |
| `username` | Required | The username of your Git repository                         |
| `token`    | Required | The API token of target Git repository                      |

---

## Support

[![Donate with Bitcoin](https://en.cryptobadges.io/badge/micro/3GhT2ABRuHuXGNzP6DH5KvLZRTXCBKkx2y)](https://en.cryptobadges.io/donate/3GhT2ABRuHuXGNzP6DH5KvLZRTXCBKkx2y) [![Donate with Ethereum](https://en.cryptobadges.io/badge/micro/0x4832fd8e2cfade141dc4873cc00cf77de604edde)](https://en.cryptobadges.io/donate/0x4832fd8e2cfade141dc4873cc00cf77de604edde)

[![ko-fi](https://www.ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/D1D1WGU9)

<div><a href="https://payping.ir/@hatamiarash7"><img src="https://cdn.payping.ir/statics/Payping-logo/Trust/blue.svg" height="128" width="128"></a></div>

## Contributing

Don't be shy and reach out to us if you want to contribute.

1. Fork it !
2. Create your feature branch : `git checkout -b my-new-feature`
3. Commit your changes : `git commit -am 'Add some feature'`
4. Push to the branch : `git push origin my-new-feature`
5. Submit a pull request

## Issues

Each project may have many problems. Contributing to the better development of this project by reporting them.
