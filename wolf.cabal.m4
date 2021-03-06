name:                wolf
version:             VERSION
synopsis:            Amazon Simple Workflow Service Wrapper.
homepage:            https://github.com/swift-nav/wolf
license:             MIT
license-file:        LICENSE
author:              Swift Navigation Inc.
maintainer:          Mark Fine <dev@swiftnav.com>
copyright:           Copyright (C) 2015 Swift Navigation, Inc.
category:            Network, AWS, Cloud, Distributed Computing
build-type:          Simple
extra-source-files:  README.md
cabal-version:       >= 1.10

description:
  Wolf is a wrapper around Amazon Simple Workflow Service.

source-repository head
  type:              git
  location:          git@github.com:swift-nav/wolf.git

library
  exposed-modules:     Network.AWS.Flow
                     , Network.AWS.Wolf
  other-modules:       Network.AWS.Flow.Env
                     , Network.AWS.Flow.Logger
                     , Network.AWS.Flow.Prelude
                     , Network.AWS.Flow.S3
                     , Network.AWS.Flow.SWF
                     , Network.AWS.Flow.Types
                     , Network.AWS.Flow.Uid
                     , Network.AWS.Wolf.Act
                     , Network.AWS.Wolf.Aeson
                     , Network.AWS.Wolf.Ctx
                     , Network.AWS.Wolf.Decide
                     , Network.AWS.Wolf.File
                     , Network.AWS.Wolf.Lens
                     , Network.AWS.Wolf.Prelude
                     , Network.AWS.Wolf.S3
                     , Network.AWS.Wolf.SWF
                     , Network.AWS.Wolf.Trace
                     , Network.AWS.Wolf.Types
                     , Network.AWS.Wolf.Types.Alias
                     , Network.AWS.Wolf.Types.Ctx
                     , Network.AWS.Wolf.Types.Plan
                     , Network.AWS.Wolf.Types.Product
                     , Network.AWS.Wolf.Types.Sum
                     , Network.AWS.Wolf.Types.Trans
                     , Paths_wolf
  default-language:    Haskell2010
  hs-source-dirs:      src
  ghc-options:         -Wall -fno-warn-orphans
  build-depends:       aeson
                     , amazonka
                     , amazonka-core
                     , amazonka-s3
                     , amazonka-swf
                     , base >= 4.7 && < 5
                     , basic-prelude
                     , bytestring
                     , conduit
                     , conduit-combinators
                     , conduit-extra
                     , directory
                     , exceptions
                     , fast-logger
                     , filemanip
                     , formatting
                     , http-conduit
                     , http-types
                     , lens
                     , lifted-async
                     , lifted-base
                     , monad-control
                     , monad-logger
                     , mtl
                     , mtl-compat
                     , optparse-applicative
                     , process
                     , regex-applicative
                     , regex-compat
                     , resourcet
                     , safe
                     , template-haskell
                     , text
                     , text-manipulate
                     , time
                     , transformers
                     , transformers-base
                     , unordered-containers
                     , uuid
                     , yaml
  default-extensions:  OverloadedStrings
                       FlexibleContexts
                       RecordWildCards
                       NoImplicitPrelude

test-suite test
  type:                exitcode-stdio-1.0
  hs-source-dirs:      test
  main-is:             Test.hs
  other-modules:       Test.Network.AWS.Flow
  build-depends:       base
                     , basic-prelude
                     , tasty
                     , tasty-hunit
                     , wolf
  ghc-options:         -threaded -rtsopts -with-rtsopts=-N -Wall
  default-language:    Haskell2010
  default-extensions:  NoImplicitPrelude
                       OverloadedStrings

executable wolf-register
  default-language:    Haskell2010
  main-is:             Register.hs
  other-modules:       Options
  hs-source-dirs:      main
  ghc-options:         -Wall -main-is Register
  build-depends:       async
                     , base
                     , basic-prelude
                     , optparse-applicative
                     , resourcet
                     , text
                     , wolf
                     , yaml
  default-extensions:  OverloadedStrings
                       RecordWildCards
                       NoImplicitPrelude

executable wolf-execute
  default-language:    Haskell2010
  main-is:             Execute.hs
  other-modules:       Options
  hs-source-dirs:      main
  ghc-options:         -Wall -main-is Execute
  build-depends:       async
                     , base
                     , basic-prelude
                     , optparse-applicative
                     , resourcet
                     , text
                     , wolf
                     , yaml
  default-extensions:  OverloadedStrings
                       RecordWildCards
                       NoImplicitPrelude

executable wolf-decide
  default-language:    Haskell2010
  main-is:             Decide.hs
  other-modules:       Options
  hs-source-dirs:      main
  ghc-options:         -Wall -main-is Decide
  build-depends:       async
                     , base
                     , basic-prelude
                     , optparse-applicative
                     , resourcet
                     , text
                     , wolf
                     , yaml
  default-extensions:  OverloadedStrings
                       RecordWildCards
                       NoImplicitPrelude

executable wolf-act
  default-language:    Haskell2010
  main-is:             Act.hs
  other-modules:       Options
  hs-source-dirs:      main
  ghc-options:         -Wall -main-is Act
  build-depends:       aeson
                     , amazonka-core
                     , base
                     , basic-prelude
                     , bytestring
                     , optparse-applicative
                     , resourcet
                     , shelly
                     , system-filepath
                     , text
                     , transformers
                     , wolf
                     , yaml
                     , zlib
  default-extensions:  OverloadedStrings
                       RecordWildCards
                       NoImplicitPrelude

executable wolf-act2
  default-language:    Haskell2010
  main-is:             Act2.hs
  other-modules:       Options
  hs-source-dirs:      main
  ghc-options:         -Wall -main-is Act2
  build-depends:       aeson
                     , amazonka-core
                     , base
                     , basic-prelude
                     , bytestring
                     , optparse-applicative
                     , resourcet
                     , shelly
                     , system-filepath
                     , text
                     , transformers
                     , wolf
                     , yaml
                     , zlib
  default-extensions:  OverloadedStrings
                       RecordWildCards
                       NoImplicitPrelude

executable wolf-actor
  hs-source-dirs:      main
  main-is:             actor.hs
  ghc-options:         -threaded -rtsopts -with-rtsopts=-N -Wall -O2
  build-depends:       base
                     , wolf
                     , optparse-generic
  default-language:    Haskell2010

executable wolf-decider
  hs-source-dirs:      main
  main-is:             decider.hs
  ghc-options:         -threaded -rtsopts -with-rtsopts=-N -Wall -O2
  build-depends:       base
                     , wolf
                     , optparse-generic
  default-language:    Haskell2010

executable shake-wolf
  main-is:             Shakefile.hs
  ghc-options:         -threaded -rtsopts -with-rtsopts=-N -Wall -O2
  build-depends:       base >= 4.7 && < 5
                     , basic-prelude
                     , directory
                     , shake
  default-language:    Haskell2010

