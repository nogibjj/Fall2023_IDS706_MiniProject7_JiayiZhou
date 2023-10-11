install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=main --cov=mylib test_*.py

format:	
	black *.py 

lint:
	ruff check *.py mylib/*.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	#deploy goes here
		
all: install lint test format deploy

generate_and_push:
	# Create the markdown file 
	python test_main.py 

	# Add, commit, and push the generated files to GitHub
	@if [ -n "$$(git status --porcelain)" ]; then \
		git config --local user.email "action@github.com"; \
		git config --local user.name "GitHub Action"; \
		git add .; \
		git commit -m "Add SQL log"; \
		git push; \
	else \
		echo "No changes to commit. Skipping commit and push."; \
	fi

extract:
	etl_query extract

transform_load: 
	etl_query transform_load

query:
	etl_query general_query "SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed FROM (SELECT team1 AS team FROM default.matchesdb_one UNION ALL SELECT team2 AS team FROM default.matchesdb_one UNION ALL SELECT team1 AS team FROM default.wwc_matches_2_db UNION ALL SELECT team2 AS team FROM default.wwc_matches_2_db) AS AllTeams GROUP BY Team ORDER BY TotalMatchesPlayed DESC;"

setup_package: 
	python setup.py develop --user