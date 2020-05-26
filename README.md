This repo contains a Dockerfile to build a `cloudflared` image to be used in a Kubernetes cluster, with Argo Tunnel, as documented here: https://developers.cloudflare.com/argo-tunnel/reference/sidecar/.

There's a GitHub Workflow to build and push the image on tag to replicated/cloudflared:<tag>.

The tag versions do not track the versions of cloudflared.