# Security

## This topic describes security features of NVIDIA® Jetson™ Linux. Below are the subtopics:

    Secure Boot describes Secure Boot, a feature which ensures that the Jetson Linux boot process cannot be redirected or compromised.

    OP-TEE describes the Open Portable Trusted Execution Environment, a TEE provided with Jetson Linux.

    Disk Encryption describes the Jetson Linux implementation of Linux Unified Key Setup (LUKS), the Linux standard for disk encryption. This release does not support this feature.

    Secure Storage describes Secure Storage, a feature that provides a solution to ensure the general-purpose data and key material can be stored securely.

    Rollback Protection describes Rollback Protection, a feature that prevents a computing system from being downgraded (rolled back) from a later version to an earlier one.

    PVA Authentication describes the Authentication feature for software that executes on the PVA.

    Secure Boot
        Overall Fusing and Signing Binaries Flow
        Prerequisites Secure Boot
        Fuses and Security
        Fuse Configuration File
            Jetson Orin Fuse Configuration File
            Jetson Xavier NX and Jetson AGX Xavier Fuse Configuration Files
        Generate A PKC Key Pair
            Generate PublicKeyHash value from a PKC key pair
        Prepare an SBK key
        Prepare K1/K2/KEK keys
        Prepare the Fuse Configuration file
        Burn Fuses with the Fuse Configuration file
        Read Fuses through the Linux kernel
        Sign and Flash Secured Images
            Sign and Flash Secured Images in One Step
            Sign and Flash Secured Images in Separate Steps
        Revocation of the PKC Keys
            An Example: Fusing the Three PKC keys
            An Example: Revoking the First PKC key (rsa3k-0.pem)
            An Example: Revoking the Second PKC key (rsa3k-1.pem)
        Legacy Support of Secure Boot for Xavier SoC
        Burning PKC, KEK, and SBK Fuses
            odmfuse.sh Options
            Signing and Flashing with initrd Using the l4t_initrd_flash.sh Script
        UEFI Secureboot
            Prerequisites
            References
            Prepare the PK, KEK, db Keys
            Generate Signed UEFI Payloads
            Enabling UEFI Secureboot at Flashing Time
            Enabling UEFI Secureboot through UEFI Utilities by Running from an Ubuntu Prompt
            Update the db/dbx Keys with a Capsule Update
        UEFI Payload Encryption
            Prepare the User Encryption Key
            Generate the EKB
            Enabling UEFI Payload Encryption at Flashing Time
        UEFI Platform Vendor Key Feature
            Platform Vendor Key Signed/Authenticate UEFI
            PV Key Encrypt/Decrypt UEFI
            Fuse Solution
            Non-Fuse Solution
        Kernel Module Signing
    OP-TEE: Open Portable Trusted Execution Environment
        OP-TEE in Jetson Linux
        Architecture
            Execution Steps
        Trusted Application and Client Application Development
            How to Implement a New Trusted Application or Port an Existing One
            Types of Trusted Applications
        Key Derivation Function of a Fuse Key and User-Defined Key
            Encrypted Keyblobs
            Encrypted Keyblob Overview
            Encrypted Keyblob Format
            EKB Header
            EKB Content
            EKB Binary Size Restrictions
            Encrypted Keyblob Generation and Device Provisioning
            Encrypted Keyblob Decryption
            SE Keyslot Clearing
        Secure Samples
            Sample Pseudo Trusted Application: jetson_user_key_pta
            hwkey-agent Trusted Application
            nvhwkey-app Client Application
        Key Maintenance and EKBs
            KDF of Fuse Keys
            Pseudocode for NIST-SP-800-108
            EKB Generation
            EKB Extraction
            Tool for EKB Generation
            EKB Extraction Sample
        AES-256 Hardware Key Derivation Function in jetson_user_key_pta
            Flow of the AES-256 Hardware KDF
            API Functions
    Disk Encryption
        Setup Preparation
        Details of Operation
        The Threat Model
        Disk Encryption Implementation in Jetson Linux
            Layout of an Encrypted Disk
            How to Create File System Images
            Creating an Encrypted Rootfs on the Host
            How to Flash an Encrypted Rootfs to an External Storage Device
            To Enhance initrd to Unlock an Encrypted Rootfs
            To modify initrd to unlock additional encrypted file systems
            Enabling Disk Encryption Only for UDA
            Enabling Disk Encryption for Dynamically Created Partitions
            Modifying /opt/nvidia/cryptluks to Unlock Previously Created and Encrypted File Systems
            Summary
        Manufacturing process
    Secure Storage
        Secure Storage in Jetson Linux
        SSK and HUK
        RPMB Key Management
    Rollback Protection
        Overview
        Rollback Protection for MB1-BCT, MB2, and Later Components
            MB1-BCT
            MB2 and Later Components
            Incrementing the Version Number of MB2 and Later Components
    Memory Encryption
    PVA Authentication
        Overview
        Troubleshooting

### Reference

https://docs.nvidia.com/jetson/archives/r35.4.1/DeveloperGuide/text/SD/Security.html

