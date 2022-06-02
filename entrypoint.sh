#!/usr/bin/env bash
conda run -n hp-dev python -m house_pricing.ingest_data
conda run -n hp-dev python -m house_pricing.score
conda run -n hp-dev python -m house_pricing.train