# gke
General GKE repo for learning.

## Usefull Commands

### Compute
gcloud compute project describe

#### Instances
gcloud compute 
gcloud compute instances
gcloud compute instances list

gcloud compute instances create test-instance-1 # If no zone specified takes the information from the project
gcloud compute zones list
gcloud compute instances create test-instance-2 --zone=eu-west1a

gcloud compute machine-types list
gcloud compute instances create test-instance-3 --zone=eu-west1a \
--machine-type=e2-standard

gcloud compute disk-types list
gcloud compute instances create test-instance-4 --zone=eu-west1a \
--machine-type=e2-standard \
--boot-disk-types=ssd --boot-disk-size=100




