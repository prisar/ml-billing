## GCP ML Billing

### Test labels for cost attribution

    Let's there are multiple teams using same project and we want to segragate the cost for gemini. We can use the labels in code to tag the calls. In the cost table and the bigquery the data will be reflected. For bigquery it will take 1-2 days whereas for cost table the labels will start reflecting during the month end when invoice is created. 

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

### labels - biquery
<img width="411" height="111" alt="Screenshot 2025-07-18 at 11 03 12 AM" src="https://github.com/user-attachments/assets/b83db655-798d-418c-9fb9-e2a2df4bdcf1" />


### query result - cost


<img width="408" height="90" alt="Screenshot 2025-07-18 at 11 36 07 AM" src="https://github.com/user-attachments/assets/13704d00-3933-40b6-895d-e1d8415acaa1" />
