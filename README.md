# Hello Konecta team! 👋

This repository contains my **Terraform code** for the two architectures:

- **Arch1**  
- **Arch2**

Both architectures have been fully implemented and tested.  

Alongside this repository, I have also prepared a **PDF document** with detailed explanations and **screenshots** that show the step-by-step progress, the applied configurations, and the validation of the tasks.  

The code here represents the final version that I used for the submission.  

---

## Repository Structure

- `Arch1/` → Terraform code for Architecture 1  
- `Arch2/` → Terraform code for Architecture 2  
- `backend.tf` → remote backend configuration (S3 + DynamoDB)  

---

## Notes
- State files are managed remotely using **S3** and **DynamoDB** for locking.  
- Some resources (like EC2 and NAT Gateway) were intentionally excluded from `terraform destroy` using **CLI state manipulation**, as per the task requirements.  

---

## Final Words
Thank you very much for your time and consideration! 🙏  
I hope you enjoy reviewing my submission.  

---

<p align="right">  
✨ With regards,  
<br>  
<strong><i>Omar Ashraf</i></strong>  
</p>
