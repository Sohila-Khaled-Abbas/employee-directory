# Contributing Guidelines

Thanks for your interest in contributing! 🎉

## Workflow

1. Fork repo → create branch
2. Add/edit SQL, Power BI, or docs
3. Commit with clear messages
4. Submit PR with description

## Coding Standards

- SQL files must be **modular** and **ordered** (00, 10, 20…).
- Power BI measures must be documented in `powerbi/measures.md`.
- All new tables/fields must be added to the **data lineage diagram** in `docs/`.

## Data

- Do not edit files in `data/`. Always load raw data as-is.
- Transformations must be done via staging SQL.

## Reporting Issues

- Use GitHub Issues
- Include screenshot/log if relevant
