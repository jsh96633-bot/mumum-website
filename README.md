# mumum | 머뭄

기존 Netlify 사이트를 유지하며 GitHub를 통해 배포하는 정적 웹사이트입니다.

## 포함된 기능
- Sophie Buhai 스타일에서 영감을 받은 독립적인 mumum 디자인
- 메모리얼 펜던트 및 도자기 유골함 상품 소개
- 우측 하단에 항상 고정되는 원형 문의 버튼
- Netlify Forms 문의 양식 (`mumum-inquiry`)

## GitHub + Netlify 연결
1. GitHub에서 새 저장소 `mumum-website`를 만들고 이 ZIP **압축을 푼 파일들**을 저장소 최상위에 업로드합니다.
2. Netlify에서 **기존** `bucolic-paletas-87e58d` 사이트를 엽니다. 새 사이트를 만들지 마세요.
3. Project configuration > Build & deploy > Continuous deployment (또는 Repository)에서 GitHub 저장소 연결을 선택합니다. 메뉴 이름은 UI 버전에 따라 다를 수 있습니다.
4. 저장소 `mumum-website`, 배포 브랜치 `main`을 선택합니다. Build command는 비워두고 Publish directory는 `.`로 설정합니다. `netlify.toml`에도 동일하게 지정되어 있습니다.
5. 최초 배포가 성공하면 기존 주소에서 상품 이미지, 원형 문의 버튼, 문의 양식이 작동하는지 확인합니다.
6. Netlify Forms에서 `mumum-inquiry` 양식이 감지되었는지 확인하고 테스트 문의 및 이메일 알림을 설정합니다.

## 수정과 배포
GitHub의 `main` 브랜치에 변경사항을 저장하면 Netlify가 자동으로 배포합니다. ChatGPT에서 GitHub 저장소를 직접 수정하려면 별도로 GitHub 연결 및 쓰기 권한이 필요합니다. 연결되지 않은 상태에서는 수정 파일을 다운로드해 GitHub에 업로드해야 합니다.

## 주의
- 현재 상품 가격, 주문 및 결제 기능은 실제 판매용으로 완성되지 않았습니다.
- 개인정보 처리방침, 사업자 정보, 문의 데이터 보관 정책 등을 운영 전에 확정하세요.
- 이 ZIP을 기존 Netlify Drop에 업로드하는 것만으로 GitHub 연동이 생기지는 않습니다.