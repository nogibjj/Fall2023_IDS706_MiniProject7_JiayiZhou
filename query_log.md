```sql
SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed FROM (SELECT team1 AS team FROM default.matchesdb_one UNION ALL SELECT team2 AS team FROM default.matchesdb_one UNION ALL SELECT team1 AS team FROM default.wwc_matches_2_db UNION ALL SELECT team2 AS team FROM default.wwc_matches_2_db) AS AllTeams GROUP BY Team ORDER BY TotalMatchesPlayed DESC;
```

```response from databricks
[Row(Team='South Korea', TotalMatchesPlayed=33), Row(Team='Switzerland', TotalMatchesPlayed=33), Row(Team='Ivory Coast', TotalMatchesPlayed=33), Row(Team='New Zealand', TotalMatchesPlayed=33), Row(Team='Germany', TotalMatchesPlayed=33), Row(Team='Netherlands', TotalMatchesPlayed=33), Row(Team='Brazil', TotalMatchesPlayed=33), Row(Team='Costa Rica', TotalMatchesPlayed=33), Row(Team='Australia', TotalMatchesPlayed=33), Row(Team='Japan', TotalMatchesPlayed=33), Row(Team='Spain', TotalMatchesPlayed=33), Row(Team='Cameroon', TotalMatchesPlayed=33), Row(Team='Thailand', TotalMatchesPlayed=33), Row(Team='Colombia', TotalMatchesPlayed=33), Row(Team='France', TotalMatchesPlayed=33), Row(Team='England', TotalMatchesPlayed=33), Row(Team='Norway', TotalMatchesPlayed=33), Row(Team='Sweden', TotalMatchesPlayed=33), Row(Team='USA', TotalMatchesPlayed=33), Row(Team='Ecuador', TotalMatchesPlayed=33), Row(Team='Mexico', TotalMatchesPlayed=33), Row(Team='Nigeria', TotalMatchesPlayed=33), Row(Team='Canada', TotalMatchesPlayed=22), Row(Team='China', TotalMatchesPlayed=22)]
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
[Row(Team='South Korea', TotalMatchesPlayed=36), Row(Team='Switzerland', TotalMatchesPlayed=36), Row(Team='Ivory Coast', TotalMatchesPlayed=36), Row(Team='New Zealand', TotalMatchesPlayed=36), Row(Team='Netherlands', TotalMatchesPlayed=36), Row(Team='Brazil', TotalMatchesPlayed=36), Row(Team='Germany', TotalMatchesPlayed=36), Row(Team='Costa Rica', TotalMatchesPlayed=36), Row(Team='Australia', TotalMatchesPlayed=36), Row(Team='Japan', TotalMatchesPlayed=36), Row(Team='Thailand', TotalMatchesPlayed=36), Row(Team='Spain', TotalMatchesPlayed=36), Row(Team='Cameroon', TotalMatchesPlayed=36), Row(Team='England', TotalMatchesPlayed=36), Row(Team='France', TotalMatchesPlayed=36), Row(Team='Norway', TotalMatchesPlayed=36), Row(Team='Sweden', TotalMatchesPlayed=36), Row(Team='USA', TotalMatchesPlayed=36), Row(Team='Ecuador', TotalMatchesPlayed=36), Row(Team='Mexico', TotalMatchesPlayed=36), Row(Team='Nigeria', TotalMatchesPlayed=36), Row(Team='Colombia', TotalMatchesPlayed=36), Row(Team='Canada', TotalMatchesPlayed=24), Row(Team='China', TotalMatchesPlayed=24)]
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
[Row(Team='South Korea', TotalMatchesPlayed=39), Row(Team='Switzerland', TotalMatchesPlayed=39), Row(Team='Ivory Coast', TotalMatchesPlayed=39), Row(Team='New Zealand', TotalMatchesPlayed=39), Row(Team='Netherlands', TotalMatchesPlayed=39), Row(Team='Brazil', TotalMatchesPlayed=39), Row(Team='Germany', TotalMatchesPlayed=39), Row(Team='Costa Rica', TotalMatchesPlayed=39), Row(Team='Australia', TotalMatchesPlayed=39), Row(Team='Japan', TotalMatchesPlayed=39), Row(Team='Spain', TotalMatchesPlayed=39), Row(Team='Cameroon', TotalMatchesPlayed=39), Row(Team='England', TotalMatchesPlayed=39), Row(Team='Thailand', TotalMatchesPlayed=39), Row(Team='Norway', TotalMatchesPlayed=39), Row(Team='France', TotalMatchesPlayed=39), Row(Team='USA', TotalMatchesPlayed=39), Row(Team='Ecuador', TotalMatchesPlayed=39), Row(Team='Mexico', TotalMatchesPlayed=39), Row(Team='Sweden', TotalMatchesPlayed=39), Row(Team='Nigeria', TotalMatchesPlayed=39), Row(Team='Colombia', TotalMatchesPlayed=39), Row(Team='Canada', TotalMatchesPlayed=26), Row(Team='China', TotalMatchesPlayed=26)]
```

