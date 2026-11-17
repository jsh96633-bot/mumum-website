# MUMUM 홈페이지 — GitHub 업로드 안내

## 포함된 구성
- index.html: 메인 홈페이지 (PENDANTS / URNS, 상품 상세, 장바구니 시연, 문의 폼)
- assets/: 홈페이지 제품 이미지
- inquiry-success.html: 문의 접수 완료 페이지
- netlify.toml: Netlify 배포 설정
- .github/workflows/deploy-pages.yml: GitHub Pages 자동 배포 설정

## GitHub 업로드
1. GitHub에 로그인하고 본인의 `mumum-website` 저장소를 엽니다.
2. `Add file` > `Upload files`를 선택합니다. 빈 저장소면 `uploading an existing file` 링크를 누릅니다.
3. 이 폴더 안의 파일과 `assets` 및 `.github` 폴더를 업로드합니다. `index.html`은 저장소 최상위에 있어야 합니다.
4. `Commit changes`를 눌러 업로드를 완료합니다.
5. GitHub 저장소 `Settings` > `Pages` > `Build and deployment`에서 `Source`를 `GitHub Actions`로 선택합니다.
6. `Actions` 탭의 배포 성공을 확인합니다. Pages 주소는 `https://<계정>.github.io/mumum-website/` 형식입니다.

## Netlify에 연결하기 (문의 폼 운영에 권장)
1. Netlify에서 기존 사이트의 Site configuration / Build & deploy 메뉴로 이동합니다.
2. GitHub 저장소 `mumum-website`를 연결합니다. (기존 사이트와 연결 시 기존 설정을 확인하세요.)
3. Build command: 비워둠 / Publish directory: `.` (저장소 루트)
4. 배포 완료 후 Forms에서 `mumum-inquiry` 수신 여부를 확인하고 테스트 제출을 해 주세요.

## 중요
- 제품 가격은 미정이며 '가격 문의'로 표시됩니다.
- 장바구니는 브라우저 내부 시연 기능입니다. 주문 및 결제 기능은 연결되어 있지 않습니다.
- Netlify Forms는 Netlify에 배포했을 때만 실제 수신됩니다. GitHub Pages에서 문의 폼은 작동하지 않습니다.
- 배포 전 실제 상품 정보, 판매 정책, 개인정보 처리방침, 사업자 표시 사항 등을 확정하세요.