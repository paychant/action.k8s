k8s action
=============
Interacts with kubernetes clusters calling `helm` `kubectl` commands.

## Usage

### Basic Example

```yml
name: CI

on:
  - push

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2

      - name: Deploy to k8s
        uses: paychantorg/action.k8s@v1.0.0
        env:
          KUBE_CONFIG_DATA: ${{ secrets.KUBE_CONFIG_DATA }}
        with:
          args: |
            helm list
            kubectl get pods
