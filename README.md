#Platform.sh Ruby Awesomeness Demo

Uses the platform_sh ruby gem

Just a very short and sweet sinatra app to showoff running and connecting to Redis, Elastic Search, MongoDB, Solr and RabbitMQ, all auto-conifgured, all without any external services required.

For local development just run:
`platform_local_tunnel_env rackup`

it will open ssh tunnels to your current environment and configure your services to use the remote services.