# Python 이미지를 기반으로 함
FROM python:3.8

# 작업 디렉토리 설정
WORKDIR /app

# 의존성 파일 복사
COPY requirements.txt /app/

# 의존성 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY . /app

# Flask 애플리케이션 실행
CMD ["flask", "run", "--host=0.0.0.0"]