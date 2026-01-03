## Getting Started
 
flutter pub get

flutter pub upgrade —major-versions

## Resolve all little issue

dart fix --apply

## change icon

flutter pub run flutter_launcher_icons

## add info.plist

<key>ITSAppUsesNonExemptEncryption</key> 
<string>No</string>

## ajouter sur le Debug.xconfig && Release.xconfig
#include "Pods/Target Support Files/Pods-Runner/Pods-Runner.profile.xcconfig" 

## Xcode dans build setting à ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES && ImageNotification à CLANG_WARN_QUOTED_INCLUDE_IN_FRAMEWORK_HEADER

// ceci: $(inherited)

## Build on Web 

flutter run -d chrome --web-renderer html

flutter build web --web-renderer html --release

## deploy

firebase deploy --only hosting


## Analysis_options


include: package:very_good_analysis/analysis_options.yaml

## Delete CORS Issue, Put script on index.html Header

 <script>
          (function() {
          var cors_api_host = 'whispering-citadel-11540-0a9768b9a869.herokuapp.com';
          var cors_api_url = 'https://' + cors_api_host + '/';
          var slice = [].slice;
          var origin = window.location.protocol + '//' + window.location.host;
          var open = XMLHttpRequest.prototype.open;
          XMLHttpRequest.prototype.open = function() {
              var args = slice.call(arguments);
              var targetOrigin = /^https?:\/\/([^\/]+)/i.exec(args[1]);
              if (targetOrigin && targetOrigin[0].toLowerCase() !== origin &&
                  targetOrigin[1] !== cors_api_host) {
                  args[1] = cors_api_url + args[1];
              }
              return open.apply(this, args);
          };
      })();
        </script>



## GITHUB

git init
git add .
git commit -m "app"
git branch -M app
git remote add origin https://github.com/MizzUp/clarity.git
git push -u origin app
 

flutter clean && flutter pub get && cd ios && pod update && cd ..