---
outline: deep
---
# Backup

**Strategy**

3-2-1

## Types

There are several backup types I use for backuping my data.

### Export

The **Export** backup type refers to data exported from a service via an API in a user-readable format. This method provides immediate access to essential data without the need for specialized recovery tools, making it invaluable during emergencies or disasters.

#### Key Features

- **User-Readable Format**: Data is exported in formats such as JSON, CSV, or XML, which are easy to read and process.
- **API Access**: Utilizes the service's API to extract data, ensuring up-to-date and accurate information.
- **Immediate Accessibility**: Exported data can be used instantly for urgent tasks without requiring a full system restore.
- **Simplicity**: No complex restoration processes are needed; the data is readily available for use.

#### Best Practices

- **Regular Exports**: Schedule periodic exports to maintain up-to-date backups of your data. Recommendation to export critical data on daily basis
- **Secure Storage**: Store exported files in a secure location to protect sensitive information.
- **Data Verification**: Regularly verify the integrity of exported data to ensure it is complete and uncorrupted.

### Data

The **Data Backup** type refers to the process of copying data files in their original, unaltered formats. This method involves backing up data as-is, including databases like SQLite or PostgreSQL and files stored in environments such as Kubernetes or Docker volumes. Data backups are essential for preserving the exact state of data, ensuring that it can be restored precisely as it was at the time of the backup.

#### Key Features

- **Exact Copy**: Captures data files in their original state without any transformation or compression.
- **Versatility**: Applicable to various types of data, including databases, configuration files, and application data.
- **Platform-Agnostic**: Works across different systems and environments, such as local machines, servers, or cloud services.
- **Complete Restoration**: Allows for the full recovery of data exactly as it was, ensuring consistency and integrity.
- **Flexibility**: Facilitates easy migration of data between systems or environments.

#### Best Practices

- **Regular Backups**: Schedule frequent backups to minimize data loss in case of failures.
- **Secure Storage**: Store backups in a secure and reliable location to protect against data corruption or unauthorized access.
- **Verification**: Regularly test backups by restoring data to ensure they are valid and functional.

### CSI Snapshots

### CSI Backups

## Tools

- Kopia
- Restic

## Storage


| Provider | Storage | Protocol | Capacity | Pricing |  Note
|----------|----------|----------|----------|----------|----------|
| [IONOS.com](https://ionos.com) | [Object storage](https://cloud.ionos.com/storage/object-storage) | S3 | ∞ | [1GB 0,007 € / month](https://cloud.ionos.de/storage/object-storage#pricing) | offsite
| [intercolo](https://intercolo.de/en/object-storage) | [Object storage](https://intercolo.de/en/object-storage) | S3 | ∞ | [1TB 4,99€ /month](https://intercolo.de/en/object-storage) |offsite
| [Hetzner](https://www.hetzner.com/) | [StorageBox](https://www.hetzner.com/de/storage/storage-box/) | ssh | ∞ | [1TB 3,81€ / month](https://www.hetzner.com/de/storage/storage-box/) |offsite
| TrueNas 1 |  | ssh, s3 | usable 8TB (raidz2) | | onsite
| TrueNas 2 |  | ssh, s3 | usable 12TB (raidz2) |  | onsite

**Diagram**

```mermaid
flowchart LR
  Start --> Stop
```


