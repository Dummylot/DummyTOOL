import requests

def send_message(webhook_url, message):
    data = {
        "content": message
    }
    response = requests.post(webhook_url, json=data)
    return response.status_code, response.text

webhook_url = input("Enter your Discord webhook URL: ")
message = input("Enter your message: ")
status, response = send_message(webhook_url, message)
print(f"Status: {status}\nResponse: {response}")
