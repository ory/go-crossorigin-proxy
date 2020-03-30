.PHONY: deploy
deploy:
		gcloud builds submit --tag gcr.io/ory-web/go-crossorigin-proxy
		gcloud run deploy go-crossorigin-proxy --image gcr.io/ory-web/go-crossorigin-proxy --platform managed --region us-east1 --allow-unauthenticated
