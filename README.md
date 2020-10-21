# tomcat9-guide
  - 서블릿 컨테이너인 톰캣9의 설정과 세션 생성 등의 작동 원리를 설명하기 위한 스몰 프로젝트
  - server.xml 설정들이 어떤 의미를 가지는지를 기술하고 개발시 유용한 설정에 대해 정리
  
## bin
  - setenv.sh : 톰캣 구동시 필요한 환경 변수, 시스템 프로퍼티 등을 기술한다. 

## conf
  - server.xml
    - 톰캣을 구성하는 요소를 설정할 수 있다.
    - 서버, 서비스, 커넥터, 엔진, 호스트, 컨텍스트의 계층 구조를 기술한다.
    
## persistent/session
  - 세션 파일 예시
  - 로그인 후 톰캣을 강제 종료하면 세션 파일이 특정 폴더에 저장된다. 
  - SESSION.ser은 재가동 후 사라진다. conf/<engine>/<host> 폴더에서 확인할 수 있다.
  - SESSIONID.session은 context.xml에 PersistentManager를 FileStore로 하면 얻을 수 있다.
  - strings나 파싱 프로그램을 통해 세션 파일을 읽을 수 있다.

## session
  - 간단한 로그인 애플리케이션 소스코드
  - 세션, 쿠키의 기능, 실제 세션 파일의 생성 및 관리에 대해 알 수 있도록 구현했다.
  
## webapp/session
  - 로그인 애플리케이션 빌드
  - /META-INFO/context.xml에 PersistentManager를 선언해 세션 파일을 저장했다.

## jmx와 jconsole을 이용한 모니터링도 중요한 이슈
## jvm의 스레드를 기록하는 jstack이나 heap을 살펴볼 수 있는 jstat 등도 고려해볼만 하다. (공짜이기 때문에...)
