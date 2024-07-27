$headers = @{
    'Content-Type' = 'application/json'
}

$body = @{
    "type" = "message"
    "attachments" = @(
        @{
            "contentType" = "application/vnd.microsoft.card.adaptive"
            "contentUrl" = $null
            "content" = @{
                "$schema" = "http://adaptivecards.io/schemas/adaptive-card.json"
                "type" = "AdaptiveCard"
                "version" = "1.2"
                "body" = @(
                    @{
                        "type" = "TextBlock"
                        "text" = "For Samples and Templates, see [https://adaptivecards.io/samples](https://adaptivecards.io/samples)"
                    }
                )
            }
        }
    )
}

$jsonBody = $body | ConvertTo-Json -Depth 10

Invoke-RestMethod -Uri "ReplaceWithWebhookUrl" -Method Post -Headers $headers -Body $jsonBody
