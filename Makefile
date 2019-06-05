
help:
	@echo 'Makefile for python-chalice-heroes-api                                '
	@echo '                                                                      '
	@echo 'Usage:                                                                '
	@echo '   install                             Install all dependencies to run'
	@echo '   setup                               Install all dependencies to dev'
	@echo '   test                                Run project tests              '
	@echo '   deploy-dev                          Deploy dev app to AWS          '
	@echo '   deploy-prod                          Deploy prod app to AWS        '

install:
	@pip install -r requirements.txt

setup:
	@pip install -r requirements_dev.txt

test:
	@py.test tests --cov-report term-missing --cov-report xml --cov=buscasrc --pep8 --flakes

deploy-dev:
	@chalice deploy --stage dev

deploy-prod:
	@chalice deploy --stage prod

.PHONY: help, install, setup, test, deploy-dev, deploy-prod
