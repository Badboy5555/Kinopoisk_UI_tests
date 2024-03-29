FROM python:3.11.2

LABEL QA_level='API_Kinopoisk_tests'

WORKDIR Kinopoisk_test_ptoject/

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

VOLUME  /usr/src/Kinopoisk_test_ptoject/allure-results:Kinopoisk_test_ptoject/allure-results 

ENV API_CLIENT_ID_AUTHORIZATION_TOKEN

CMD python -m pytest tests --alluredir=allure-results
