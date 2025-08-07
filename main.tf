
name: Terminate Specific EC2 Instance

on:
  workflow_dispatch:
    inputs:
      instance_id:
        description: 'i-0b006bedf08ef1745'
        required: true
        type: string

jobs:
  terminate_instance:
    runs-on: ubuntu-latest
    steps:
      - name: Configure AWS Credentials
        uses: aws-actions/configure-aws-credentials@v4
        with:
          aws-access-key-id: ${{ secrets.AWS_ACCESS_KEY_ID }}
          aws-secret-access-key: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: your-aws-region # e.g., us-east-1

      - name: Terminate EC2 Instance
        run: |
          aws ec2 terminate-instances --instance-ids ${{ github.event.inputs.instance_id }}
        env:
          AWS_ACCESS_KEY_ID: ${{ secrets.AWS_ACCESS_KEY_ID }}
          AWS_SECRET_ACCESS_KEY: ${{ secrets.AWS_SECRET_ACCESS_KEY }}
          aws-region: ${{ env.AWS_REGION }}