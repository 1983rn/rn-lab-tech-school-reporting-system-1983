
#!/bin/bash
# Auto backup script for school database
DB_PATH="D:\2025-2026\TERM II\School_Reporting_System_2414_for_repo\data\school_reports.db"
BACKUP_DIR="D:\2025-2026\TERM II\School_Reporting_System_2414_for_repo\backups"
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_FILE="$BACKUP_DIR/school_reports_auto_backup_$TIMESTAMP.db"

# Create backup
if [ -f "$DB_PATH" ]; then
    cp "$DB_PATH" "$BACKUP_FILE"
    echo "Auto backup created: $BACKUP_FILE"
else
    echo "Database file not found: $DB_PATH"
fi
