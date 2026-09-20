import json

def lambda_handler(event, context):
    print("Received event:")
    print(json.dumps(event))

    name = event.get("name", "World")

    response = {
        "statusCode": 200,
        "message": f"Hello {name}!",
        "input": event
    }

    return response