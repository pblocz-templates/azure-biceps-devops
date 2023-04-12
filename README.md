# Azure Bicep CICD Pipeline Template

This repository contains a template for an Azure DevOps pipeline that deploys Azure Bicep files following proper CICD steps.

## Repository Structure

- `biceps/`: Contains the main Bicep file for deployment.
- `.devcontainer/`: Contains configuration files for the development container.
- `.devops/`: Contains the Azure DevOps pipeline configuration and templates for various pipeline steps and jobs.
- `LICENSE`: The license file for this project.
- `README.md`: This file.

## Usage

To use this template, you'll need to have an Azure DevOps account and a project set up. Then, you can create a new pipeline in your project and use the `bicep-deployment-pipeline.yaml` file as the pipeline configuration.

You can customize the pipeline by modifying the templates in the `.devops/biceps-modules/` directory. These templates define the steps and jobs for building, linting, validating, previewing, and deploying your Bicep files.

## Pipeline Stages

The pipeline is divided into several stages:

1. **Build**: In this stage, the Bicep file is built and published as an artifact using the `build-steps-template.yaml` template.
2. **Lint**: In this stage, the Bicep file is linted using the `lint-steps-template.yaml` template and checked for security issues using the `checkov-steps-template.yaml` template.
3. **Validate**: In this stage, the Bicep file is validated against a specified Azure subscription using the `validate-steps-template.yaml` template.
4. **DeployDev**: In this stage, a preview of the deployment is generated using the `preview-steps-template.yaml` template.
In this stage, a preview of the deployment is generated using the `preview-steps-template.yaml` template. Then, if all previous stages have succeeded and certain conditions are met (e.g., not a pull request), the Bicep file is deployed to a specified environment using the `deploy-jobs-template.yaml` template

## License

This project is licensed under the [MIT License](LICENSE).

