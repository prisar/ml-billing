## GCP ML Billing

### Test labels for cost attribution


### Run multiple

    bash run_multiple.sh --script genai_cost.py --num-runs 5 --delay 2 --args "--epochs 10 -0-lr 0.001"

### GenAI library has types.GenerateContentConfig for labels


    labels={
        "code": "genai-library",
        "team": "research",
        "component": "frontend",
        "environment": "production",
    }


### Vertex AI library package

    response = model.generate_content(
        prompt,
        # Example Labels
        labels={
            "code": "vertexai-library",
            "team": "research",
            "component": "frontend",
            "environment": "production",
        },
    )

