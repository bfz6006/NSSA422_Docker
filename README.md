# NSSA422_Docker
Repo For Docker Deployment for Storage Architectures 

# Storage Architectures:
  - NFS: A shared volume is mounted via NFS to allow for cross-system access.
  - Docker Volume: A Docker volume is used to store web files, making it easy to update and serve content from within the container.
    
# Prerequisites:
  - Docker: Ensure that Docker is installed and running.
  - Docker Compose: Ensure that Docker Compose is installed for managing multi-container setups.

# Build and Run Services:
  1. cd into the NSSA422 Repository Directory
  2. run "docker compose up --build"
  3. Allow for compose to build the services

# Cleanup:
  1. To clean up deployment run "docker compose down"
  2. Wait for services to stop
     
# Troubleshooting: 
  403 Forbidden Error: Ensure that the permissions on the shared NFS volume or Docker volume are set correctly. The Nginx container must have access to read the files.
  Volume Not Reflecting Changes: If the volume is not showing the changes immediately, check that the files are correctly mounted and that the Nginx container has access to the mounted directory.
License
This project is licensed under the MIT License - see the LICENSE file for details.

