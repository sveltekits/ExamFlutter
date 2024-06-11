/*
  웹뷰
  프레임워크에 내장된 브라우저를 앱의 네이티브 컴포넌트에
  임베딩하는 기능으로, 앱에서 웹브라우저 기능을 구현해 주는 기술

  [ 웹뷰 컨트롤러에서 흔히 사용되는 함수 ]
  1. setJavascriptMode
    웹뷰에서 자바스크립트 실행을 허용할지 여부를 결정할 수 있다.
    ➊ JavascriptMode.unrestricted : 자바스크립트를 제한 없이 실행 한다.
    ➋ JavascriptMode.disabled : 자바스크립트를 실행 할 수 없다.

  2. setBackgroundColor : 배경색을 지정할 수 있다.
  3. loadRequest : 새로운 URL로 이동한다.
  4. setNavigationDelegate
    NavigationDelegate 객체를 입력해야 하며, NavigationDelegate에는
    다양한 함수가 있다.
    ➊ onProgress
      새로운 페이지를 열어서 로딩이 될 때마다 실행되는 함수
      매개변수로 로딩의 진행도를 0부터 1 사이의 값으로 받을 수 있따.
    ➋ onPageStarted
      새로운 페이지로 이동하면 실행되는 콜백 함수
      이동하고 있는 페이지의 URL을 콜백 함수의 매개변수로 입력받습니다.
    ➌ onPageFinshed
      새로운 페이지로 이동이 완료되면 실행되는 콜백 함수
      로딩 완료된 웹페이지의 URL을 매개변수로 입력 받습니다.

  [ 웹뷰를 사용하기 위한 권한과 네이트브 설정 ]
  1. 안드로이드
    ➊ android/app/src/main/AndroidManifest.xml
      (안드로이드 앱에 필요한 각종 권한을 설정할 수 있는 파일)
    ➋ 인터텟 권한 추가
      <uses-permission android:name="android.permission.INTERNET" />
      다른 권한(책 PAGE 200 참고)
    ➌ android/app/build.gradle : 안드로이드의 빌드 툴인 그레들 설정파일
      -> android/build.gradle : 클래스 패스나 레포지토리 정보를 관리
      -> android/app/build.gradle : 모듈 파일이며, 의존성이나 버전 정보를 관리
    ➍ android.compileSdkVersio을 33으로 변경
    ➎ android.defaultConfig.minSdkVersion을 20으로 변경
  2. IOS
    ➊ ios/Runner/Info.plist
      <key>NSAppTransportSecurity</key>
      <dict>
        <key>NSAllowsArbitraryLoads</key>
        <true/>
        <key>NSAllowsArbitraryLoadsInWebContent</key>
        <true/>
      </dict>
    
    ➋ ➌

  [ 웹뷰를 사용하기 webview_flutter 플러그인 추가 ]

  dependencies:
    webview_flutter: 4.4.1
    

    ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➊ ➋ ➌ ➍ ➎ ➏ ➐ ➑ ➒ ➓
*/