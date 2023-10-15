```sql
SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed FROM (SELECT team1 AS team FROM default.matchesdb_one UNION ALL SELECT team2 AS team FROM default.matchesdb_one UNION ALL SELECT team1 AS team FROM default.wwc_matches_2_db UNION ALL SELECT team2 AS team FROM default.wwc_matches_2_db) AS AllTeams GROUP BY Team ORDER BY TotalMatchesPlayed DESC;
```

```response from databricks
[Row(Team='South Korea', TotalMatchesPlayed=51), Row(Team='Switzerland', TotalMatchesPlayed=51), Row(Team='Ivory Coast', TotalMatchesPlayed=51), Row(Team='New Zealand', TotalMatchesPlayed=51), Row(Team='Netherlands', TotalMatchesPlayed=51), Row(Team='Costa Rica', TotalMatchesPlayed=51), Row(Team='Brazil', TotalMatchesPlayed=51), Row(Team='Germany', TotalMatchesPlayed=51), Row(Team='Australia', TotalMatchesPlayed=51), Row(Team='Japan', TotalMatchesPlayed=51), Row(Team='Cameroon', TotalMatchesPlayed=51), Row(Team='England', TotalMatchesPlayed=51), Row(Team='Thailand', TotalMatchesPlayed=51), Row(Team='Spain', TotalMatchesPlayed=51), Row(Team='Colombia', TotalMatchesPlayed=51), Row(Team='France', TotalMatchesPlayed=51), Row(Team='Norway', TotalMatchesPlayed=51), Row(Team='Sweden', TotalMatchesPlayed=51), Row(Team='Ecuador', TotalMatchesPlayed=51), Row(Team='Mexico', TotalMatchesPlayed=51), Row(Team='USA', TotalMatchesPlayed=51), Row(Team='Nigeria', TotalMatchesPlayed=51), Row(Team='Canada', TotalMatchesPlayed=34), Row(Team='China', TotalMatchesPlayed=34)]
```

```sql
SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed
            FROM (SELECT team1 AS team FROM default.matchesdb_one
                UNION ALL
                SELECT team2 AS team FROM default.matchesdb_one
                UNION ALL
                SELECT team1 AS team FROM default.wwc_matches_2_db
                UNION ALL
                SELECT team2 AS team FROM default.wwc_matches_2_db
                ) AS AllTeams
            GROUP BY Team
            ORDER BY TotalMatchesPlayed DESC;
```

```response from databricks
[Row(Team='South Korea', TotalMatchesPlayed=54), Row(Team='Switzerland', TotalMatchesPlayed=54), Row(Team='Ivory Coast', TotalMatchesPlayed=54), Row(Team='New Zealand', TotalMatchesPlayed=54), Row(Team='Germany', TotalMatchesPlayed=54), Row(Team='Netherlands', TotalMatchesPlayed=54), Row(Team='Brazil', TotalMatchesPlayed=54), Row(Team='Costa Rica', TotalMatchesPlayed=54), Row(Team='Australia', TotalMatchesPlayed=54), Row(Team='Japan', TotalMatchesPlayed=54), Row(Team='Spain', TotalMatchesPlayed=54), Row(Team='Cameroon', TotalMatchesPlayed=54), Row(Team='England', TotalMatchesPlayed=54), Row(Team='Thailand', TotalMatchesPlayed=54), Row(Team='Colombia', TotalMatchesPlayed=54), Row(Team='Norway', TotalMatchesPlayed=54), Row(Team='Sweden', TotalMatchesPlayed=54), Row(Team='France', TotalMatchesPlayed=54), Row(Team='USA', TotalMatchesPlayed=54), Row(Team='Ecuador', TotalMatchesPlayed=54), Row(Team='Mexico', TotalMatchesPlayed=54), Row(Team='Nigeria', TotalMatchesPlayed=54), Row(Team='Canada', TotalMatchesPlayed=36), Row(Team='China', TotalMatchesPlayed=36)]
```

```sql
SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed
            FROM (SELECT team1 AS team FROM default.matchesdb_one
                UNION ALL
                SELECT team2 AS team FROM default.matchesdb_one
                UNION ALL
                SELECT team1 AS team FROM default.wwc_matches_2_db
                UNION ALL
                SELECT team2 AS team FROM default.wwc_matches_2_db
                ) AS AllTeams
            GROUP BY Team
            ORDER BY TotalMatchesPlayed DESC;
```

```response from databricks
[Row(Team='South Korea', TotalMatchesPlayed=57), Row(Team='Switzerland', TotalMatchesPlayed=57), Row(Team='Ivory Coast', TotalMatchesPlayed=57), Row(Team='New Zealand', TotalMatchesPlayed=57), Row(Team='Germany', TotalMatchesPlayed=57), Row(Team='Brazil', TotalMatchesPlayed=57), Row(Team='Netherlands', TotalMatchesPlayed=57), Row(Team='Costa Rica', TotalMatchesPlayed=57), Row(Team='Australia', TotalMatchesPlayed=57), Row(Team='Japan', TotalMatchesPlayed=57), Row(Team='Spain', TotalMatchesPlayed=57), Row(Team='Cameroon', TotalMatchesPlayed=57), Row(Team='England', TotalMatchesPlayed=57), Row(Team='Thailand', TotalMatchesPlayed=57), Row(Team='Colombia', TotalMatchesPlayed=57), Row(Team='Norway', TotalMatchesPlayed=57), Row(Team='France', TotalMatchesPlayed=57), Row(Team='USA', TotalMatchesPlayed=57), Row(Team='Mexico', TotalMatchesPlayed=57), Row(Team='Sweden', TotalMatchesPlayed=57), Row(Team='Nigeria', TotalMatchesPlayed=57), Row(Team='Ecuador', TotalMatchesPlayed=57), Row(Team='Canada', TotalMatchesPlayed=38), Row(Team='China', TotalMatchesPlayed=38)]
```

