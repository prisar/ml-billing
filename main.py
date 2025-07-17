import vertexai

from vertexai.generative_models import GenerativeModel

# TODO(developer): Update and un-comment below line
PROJECT_ID = "mrc-quant-ml"
vertexai.init(project=PROJECT_ID, location="us-central1")

model = GenerativeModel("gemini-2.0-flash-001")

prompt = "What is Generative AI?"
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

print(response.text)
# Example response:
# Generative AI is a type of Artificial Intelligence focused on **creating new content** based on existing data.
