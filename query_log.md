```sql
SELECT team AS Team, COUNT(*) AS TotalMatchesPlayed FROM (SELECT team1 AS team FROM default.matchesdb_one UNION ALL SELECT team2 AS team FROM default.matchesdb_one UNION ALL SELECT team1 AS team FROM default.wwc_matches_2_db UNION ALL SELECT team2 AS team FROM default.wwc_matches_2_db) AS AllTeams GROUP BY Team ORDER BY TotalMatchesPlayed DESC;
```

```response from databricks
[Row(Team='Switzerland', TotalMatchesPlayed=77), Row(Team='Ivory Coast', TotalMatchesPlayed=77), Row(Team='New Zealand', TotalMatchesPlayed=77), Row(Team='Germany', TotalMatchesPlayed=77), Row(Team='Netherlands', TotalMatchesPlayed=77), Row(Team='Australia', TotalMatchesPlayed=77), Row(Team='Thailand', TotalMatchesPlayed=77), Row(Team='Norway', TotalMatchesPlayed=77), Row(Team='USA', TotalMatchesPlayed=77), Row(Team='Sweden', TotalMatchesPlayed=77), Row(Team='Nigeria', TotalMatchesPlayed=77), Row(Team='Ecuador', TotalMatchesPlayed=77), Row(Team='South Korea', TotalMatchesPlayed=76), Row(Team='Costa Rica', TotalMatchesPlayed=76), Row(Team='Brazil', TotalMatchesPlayed=76), Row(Team='Japan', TotalMatchesPlayed=76), Row(Team='Cameroon', TotalMatchesPlayed=76), Row(Team='England', TotalMatchesPlayed=76), Row(Team='Spain', TotalMatchesPlayed=76), Row(Team='Colombia', TotalMatchesPlayed=76), Row(Team='France', TotalMatchesPlayed=76), Row(Team='Mexico', TotalMatchesPlayed=76), Row(Team='Canada', TotalMatchesPlayed=51), Row(Team='China', TotalMatchesPlayed=51)]
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
[Row(Team='Switzerland', TotalMatchesPlayed=80), Row(Team='Ivory Coast', TotalMatchesPlayed=80), Row(Team='New Zealand', TotalMatchesPlayed=80), Row(Team='Germany', TotalMatchesPlayed=80), Row(Team='Netherlands', TotalMatchesPlayed=80), Row(Team='Australia', TotalMatchesPlayed=80), Row(Team='Thailand', TotalMatchesPlayed=80), Row(Team='Norway', TotalMatchesPlayed=80), Row(Team='USA', TotalMatchesPlayed=80), Row(Team='Sweden', TotalMatchesPlayed=80), Row(Team='Nigeria', TotalMatchesPlayed=80), Row(Team='Ecuador', TotalMatchesPlayed=80), Row(Team='South Korea', TotalMatchesPlayed=79), Row(Team='Brazil', TotalMatchesPlayed=79), Row(Team='Costa Rica', TotalMatchesPlayed=79), Row(Team='Cameroon', TotalMatchesPlayed=79), Row(Team='Japan', TotalMatchesPlayed=79), Row(Team='Spain', TotalMatchesPlayed=79), Row(Team='England', TotalMatchesPlayed=79), Row(Team='Colombia', TotalMatchesPlayed=79), Row(Team='France', TotalMatchesPlayed=79), Row(Team='Mexico', TotalMatchesPlayed=79), Row(Team='Canada', TotalMatchesPlayed=53), Row(Team='China', TotalMatchesPlayed=53)]
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
[Row(Team='Switzerland', TotalMatchesPlayed=83), Row(Team='Ivory Coast', TotalMatchesPlayed=83), Row(Team='New Zealand', TotalMatchesPlayed=83), Row(Team='Germany', TotalMatchesPlayed=83), Row(Team='Netherlands', TotalMatchesPlayed=83), Row(Team='Australia', TotalMatchesPlayed=83), Row(Team='Thailand', TotalMatchesPlayed=83), Row(Team='Norway', TotalMatchesPlayed=83), Row(Team='USA', TotalMatchesPlayed=83), Row(Team='Ecuador', TotalMatchesPlayed=83), Row(Team='Sweden', TotalMatchesPlayed=83), Row(Team='Nigeria', TotalMatchesPlayed=83), Row(Team='South Korea', TotalMatchesPlayed=82), Row(Team='Brazil', TotalMatchesPlayed=82), Row(Team='Costa Rica', TotalMatchesPlayed=82), Row(Team='Japan', TotalMatchesPlayed=82), Row(Team='Spain', TotalMatchesPlayed=82), Row(Team='Cameroon', TotalMatchesPlayed=82), Row(Team='England', TotalMatchesPlayed=82), Row(Team='Colombia', TotalMatchesPlayed=82), Row(Team='France', TotalMatchesPlayed=82), Row(Team='Mexico', TotalMatchesPlayed=82), Row(Team='Canada', TotalMatchesPlayed=55), Row(Team='China', TotalMatchesPlayed=55)]
```

