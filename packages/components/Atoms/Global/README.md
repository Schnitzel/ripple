<!-- GENERATED_TITLE -->
# @dpc-sdp/ripple-global

<!-- /GENERATED_TITLE -->
<!-- GENERATED_DESCRIPTION -->
> The core styles and utilities used by all ripple components. Includes sets of
colours, fonts, breakpoints.

<!-- /GENERATED_DESCRIPTION -->

--------------------------------------------------------------------------------

## rplOptions

This is a globally available options object to allow passing options between ripple components. Don't abuse this, keep it light as the object gets passed between all components.

```js
  nuxt: false, // enable if using in SSR environment eg: nuxt
  hostname: 'localhost', // set hostname for rpl-link etc
  origin: '', // URL with protocol://host(:port) e.g. http://localhost:3000
  quickexit: false, // enable quick exit feature
  quickexiturl: 'https://www.google.com', // URL to use for quickexit
  plugins: [], // array of cheerio transformer function plugins to pass to RplMarkup
  viclogo: true // whether to display primary vic.gov.au logo
```

--------------------------------------------------------------------------------

<!-- GENERATED_INSTALL -->
## Install

```shell
npm install @dpc-sdp/ripple-global --save
```

<!-- /GENERATED_INSTALL -->

--------------------------------------------------------------------------------

<!-- GENERATED_DEPENDENCY_GRAPH -->
## Dependency graph

```shell
@dpc-sdp/ripple-global
├── masonry-layout
├── moment
├── object-fit-images
└── vue-focus
```

<!-- /GENERATED_DEPENDENCY_GRAPH -->

--------------------------------------------------------------------------------

<!-- GENERATED_IMPORT -->
## Import

```js
import { RplDivider } from '@dpc-sdp/ripple-global'
import RplGlobal from '@dpc-sdp/ripple-global'
```

<!-- /GENERATED_IMPORT -->

--------------------------------------------------------------------------------

<!-- GENERATED_USAGE_AND_TESTS -->
## Usage and Tests

See [Storybook/Atoms/Global/Colors](https://ripple.sdp.vic.gov.au/?path=/story/atoms-global--colors).

See [Storybook/Atoms/Global/Fonts](https://ripple.sdp.vic.gov.au/?path=/story/atoms-global--fonts).

See [Storybook/Atoms/Global/Typography](https://ripple.sdp.vic.gov.au/?path=/story/atoms-global--typography).

See [Storybook/Atoms/Global/Breakpoints](https://ripple.sdp.vic.gov.au/?path=/story/atoms-global--breakpoints).

See [Storybook/Atoms/Global/Divider](https://ripple.sdp.vic.gov.au/?path=/story/atoms-global--divider).

<!-- /GENERATED_USAGE_AND_TESTS -->

--------------------------------------------------------------------------------

<!-- GENERATED_LICENSE -->
## License

Licensed under the Apache-2.0 License.

<!-- /GENERATED_LICENSE -->
